class MapInfo {
  static int getTravelTime(num miliSeconds) {
    Duration duration = Duration(milliseconds: miliSeconds.toInt());
    return duration.inMinutes;
  }

  static double getDistance(num distance) {
    double distanceInKilometers = distance / 1000;
    double roundedDistance =
        double.parse(distanceInKilometers.toStringAsFixed(1));
    return roundedDistance;
  }
}
