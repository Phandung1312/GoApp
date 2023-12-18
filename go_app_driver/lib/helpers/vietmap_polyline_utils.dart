



import 'dart:math';

import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

enum Unit {
  meters,
  millimeters,
  centimeters,
  kilometers,
  acres,
  miles,
  nauticalmiles,
  inches,
  yards,
  feet,
  radians,
  degrees,
}

const earthRadius = 6371008.8;

const factors = <Unit, num>{
  Unit.centimeters: earthRadius * 100,
  Unit.degrees: earthRadius / 111325,
  Unit.feet: earthRadius * 3.28084,
  Unit.inches: earthRadius * 39.370,
  Unit.kilometers: earthRadius / 1000,
  Unit.meters: earthRadius,
  Unit.miles: earthRadius / 1609.344,
  Unit.millimeters: earthRadius * 1000,
  Unit.nauticalmiles: earthRadius / 1852,
  Unit.radians: 1,
  Unit.yards: earthRadius / 1.0936,
};

class NearestPointResult {
  final LatLng point;
  final num distance;
  final int index;
  final num location;

  NearestPointResult({
    required this.point,
    required this.distance,
    required this.index,
    required this.location,
  });
  toJson() {
    return {
      'point': point.toJson(),
      'distance': distance,
      'index': index,
      'location': location,
    };
  }
}

class VietmapPolyline {
  static NearestPointResult? _nearestPointOnLine(
    List<LatLng> line,
    LatLng point, [
    Unit unit = Unit.kilometers,
    bool isGetStop = false,
  ]) {
    NearestPointResult? nearest;

    num length = 0;
    NearestPointResult? stopP;
    for (var i = 0; i < line.length - 1; ++i) {
      final startCoordinates = line[i];
      final stopCoordinates = line[i + 1];

      final startPoint = startCoordinates;
      final stopPoint = stopCoordinates;

      final sectionLength = distance(startPoint, stopPoint, unit);

      final start = NearestPointResult(
        point: startPoint,
        distance: distance(point, startPoint, unit),
        index: i,
        location: length,
      );

      final stop = NearestPointResult(
        point: stopPoint,
        distance: distance(point, stopPoint, unit),
        index: i + 1,
        location: length + sectionLength,
      );

      final heightDistance = max(start.distance, stop.distance);
      final direction = bearing(startPoint, stopPoint);

      final perpendicular1 = destination(
        point,
        heightDistance,
        direction + 90,
        unit,
      );

      final perpendicular2 = destination(
        point,
        heightDistance,
        direction - 90,
        unit,
      );

      final intersectionPoint = intersects(
        [perpendicular1, perpendicular2],
        [startPoint, stopPoint],
      );

      NearestPointResult? intersection;

      if (intersectionPoint != null) {
        intersection = NearestPointResult(
          point: intersectionPoint,
          distance: distance(point, intersectionPoint, unit),
          index: i,
          location: length + distance(startPoint, intersectionPoint, unit),
        );
      }

      if (nearest == null || start.distance < nearest.distance) {
        nearest = start;
      }

      if (stop.distance < nearest.distance) {
        nearest = stop;
        stopP = stop;
      }

      if (intersection != null && intersection.distance < nearest.distance) {
        nearest = intersection;
      }

      length += sectionLength;
    }

    /// A `List<LatLng>` is guaranteed to have at least two points and thus a
    /// nearest point has to exist.

    return isGetStop ? stopP : nearest;
  }

  /// Takes a [LatLng] and a [List<LatLng>] and calculates the closest LatLng on the [List<LatLng>].
  /// ```dart
  /// var line = List<LatLng>(
  ///   coordinates: [
  ///     Position.of([-77.031669, 38.878605]),
  ///     Position.of([-77.029609, 38.881946]),
  ///     Position.of([-77.020339, 38.884084]),
  ///     Position.of([-77.025661, 38.885821]),
  ///     Position.of([-77.021884, 38.889563]),
  ///     Position.of([-77.019824, 38.892368)]
  /// ]);
  /// var pt = LatLng(coordinates: Position(lat: -77.037076, lng: 38.884017));
  ///
  /// var snapped = nearestPointOnLine(line, pt, Unit.miles);
  /// ```
  ///
  static NearestPointResult? nearestPointOnLine(
    List<LatLng> line,
    LatLng point, [
    Unit unit = Unit.kilometers,
  ]) {
    return _nearestPointOnLine(line, point, unit);
  }

  static List<List<LatLng>> splitRouteByPoint(
    List<LatLng> line,
    LatLng point, {
    Unit unit = Unit.kilometers,
    bool snapInputPointToResult = true,
  }) {
    var res = _nearestPointOnLine(line, point, unit, true);
    var line1 = line.sublist(0, res?.index ?? -1 + 1);
    if (snapInputPointToResult) {
      line1.add(point);
    }
    var line2 = line.sublist(res?.index ?? 0  + 1, line.length);
    if (snapInputPointToResult) {
      line2.insert(0, point);
    }
    return [line1, line2];
  }

  static num distance(LatLng from, LatLng to, [Unit unit = Unit.kilometers]) =>
      distanceRaw(from, to, unit);

  static num distanceRaw(LatLng from, LatLng to,
      [Unit unit = Unit.kilometers]) {
    var dLat = degreesToRadians((to.latitude - from.latitude));
    var dLon = degreesToRadians((to.longitude - from.longitude));
    var lat1 = degreesToRadians(from.latitude);
    var lat2 = degreesToRadians(to.latitude);

    num a =
        pow(sin(dLat / 2), 2) + pow(sin(dLon / 2), 2) * cos(lat1) * cos(lat2);

    return radiansToLength(2 * atan2(sqrt(a), sqrt(1 - a)), unit);
  }

  static num degreesToRadians(num degrees) {
    num radians = degrees.remainder(360);
    return radians * pi / 180;
  }

  static num radiansToLength(num radians, [Unit unit = Unit.kilometers]) {
    var factor = factors[unit];
    if (factor == null) {
      throw Exception("$unit units is invalid");
    }
    return radians * factor;
  }

  static num bearingRaw(LatLng start, LatLng end, {bool calcFinal = false}) {
    // Reverse calculation
    if (calcFinal == true) {
      return calculateFinalBearingRaw(start, end);
    }

    num lng1 = degreesToRadians(start.longitude);
    num lng2 = degreesToRadians(end.longitude);
    num lat1 = degreesToRadians(start.latitude);
    num lat2 = degreesToRadians(end.latitude);
    num a = sin(lng2 - lng1) * cos(lat2);
    num b = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(lng2 - lng1);

    return radiansToDegrees(atan2(a, b));
  }

  /// Takes two [Point]s and finds the geographic bearing between them,
  /// i.e. the angle measured in degrees from the north line (0 degrees)
  /// For example:
  ///
  /// ```dart
  /// var point1 = Point(coordinates: Position(-75.343, 39.984));
  /// var point2 = Point(coordinates: Position((-75.543, 39.123));
  ///
  /// var bearing = bearing(point1, point2);
  /// //addToMap
  /// var addToMap = [point1, point2]
  /// point1.properties['marker-color'] = '#f00'
  /// point2.properties['marker-color'] = '#0f0'
  /// point1.properties.bearing = bearing
  /// ```

  static num bearing(LatLng start, LatLng end, {bool calcFinal = false}) =>
      bearingRaw(start, end, calcFinal: calcFinal);

  static num calculateFinalBearingRaw(LatLng start, LatLng end) {
    // Swap start & end
    num reverseBearing = bearingRaw(end, start) + 180;
    return reverseBearing.remainder(360);
  }

  /// Calculates Final Bearing
  static num calculateFinalBearing(LatLng start, LatLng end) =>
      calculateFinalBearingRaw(start, end);

  static num radiansToDegrees(num radians) {
    num degrees = radians.remainder(2 * pi);
    return degrees * 180 / pi;
  }

  static LatLng destinationRaw(LatLng origin, num distance, num bearing,
      [Unit unit = Unit.kilometers]) {
    num longitude1 = degreesToRadians(origin.longitude);
    num latitude1 = degreesToRadians(origin.latitude);
    num bearingRad = degreesToRadians(bearing);
    num radians = lengthToRadians(distance, unit);

    // Main
    num latitude2 = asin(sin(latitude1) * cos(radians) +
        cos(latitude1) * sin(radians) * cos(bearingRad));
    num longitude2 = longitude1 +
        atan2(sin(bearingRad) * sin(radians) * cos(latitude1),
            cos(radians) - sin(latitude1) * sin(latitude2));
    return LatLng(
      radiansToDegrees(latitude2).toDouble(),
      radiansToDegrees(longitude2).toDouble(),
    );
  }

  /// Takes a [Point] and calculates the location of a destination point given a distance in
  /// degrees, radians, miles, or kilometers; and bearing in degrees.
  /// This uses the [Haversine formula](http://en.wikipedia.org/wiki/Haversine_formula) to account for global curvature.
  /// For example:
  ///
  /// ```dart
  /// var point = Point(coordinates: Position(-75.343, 39.984));
  /// var distance = 50;
  /// var bearing = 90;
  /// var options = Unit.miles;
  ///
  /// var destination = destination(point, distance, bearing, options);
  ///
  /// //addToMap
  /// var addToMap = [point, destination]
  /// destination.properties['marker-color'] = '#f00';
  /// point.properties['marker-color'] = '#0f0';
  /// ```

  static LatLng destination(LatLng origin, num distance, num bearing,
          [Unit unit = Unit.kilometers]) =>
      destinationRaw(origin, distance, bearing, unit);

  static num lengthToRadians(num distance, [Unit unit = Unit.kilometers]) {
    num? factor = factors[unit];
    if (factor == null) {
      throw Exception("$unit units is invalid");
    }
    return distance / factor;
  }

  static LatLng? intersects(List<LatLng> line1, List<LatLng> line2) {
    if (line1.length != 2) {
      throw Exception('line1 must only contain 2 coordinates');
    }

    if (line2.length != 2) {
      throw Exception('line2 must only contain 2 coordinates');
    }

    final x1 = line1.first.longitude;
    final y1 = line1.first.latitude;
    final x2 = line1.last.longitude;
    final y2 = line1.last.latitude;
    final x3 = line2.first.longitude;
    final y3 = line2.first.latitude;
    final x4 = line2.last.longitude;
    final y4 = line2.last.latitude;

    final denom = (y4 - y3) * (x2 - x1) - (x4 - x3) * (y2 - y1);

    if (denom == 0) {
      return null;
    }

    final numeA = (x4 - x3) * (y1 - y3) - (y4 - y3) * (x1 - x3);
    final numeB = (x2 - x1) * (y1 - y3) - (y2 - y1) * (x1 - x3);

    final uA = numeA / denom;
    final uB = numeB / denom;

    if (uA >= 0 && uA <= 1 && uB >= 0 && uB <= 1) {
      final x = x1 + uA * (x2 - x1);
      final y = y1 + uA * (y2 - y1);

      return LatLng(y, x);
    }

    return null;
  }
}
