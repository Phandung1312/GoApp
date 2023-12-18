import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_app_driver/config/constants.dart';
import 'package:go_app_driver/data/models/booking/booking_status_model.dart';
import 'package:go_app_driver/data/models/booking/booking_status_request_model.dart';
import 'package:go_app_driver/data/models/chat/message_model.dart';
import 'package:go_app_driver/data/models/location_info_model.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/entities/message.dart';
import 'package:go_app_driver/extensions/latlng_extension.dart';
import 'package:go_app_driver/helpers/share_prefereces.dart';
import 'package:go_app_driver/helpers/vietmap_polyline_utils.dart'
    as map_helper;
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:polyline_codec/polyline_codec.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:vietmap_gl_platform_interface/vietmap_gl_platform_interface.dart';

part 'socket_bloc.freezed.dart';
part 'socket_event.dart';
part 'socket_state.dart';

@lazySingleton
class SocketBloc extends Bloc<SocketEvent, SocketState> {
  late final StompClient client;
  Timer? timer;
  String? route;
  double bearing = 0;
  SocketBloc() : super(const SocketState.initial()) {
    String token = getIdToken();

    client = StompClient(
        config: StompConfig.sockJS(
            url: "$webSocketUrl?Authorization=Bearer $token",
            onConnect: (stompFrame) {
              Logger().i("Socket connected");
              listenerNotify();
              listenerBooking();
              listenerBookingSatus();
              listenerMessage();
            },
            onDisconnect: (_) {
              Logger().i("Socket disconnected");
              add(const SocketEvent.connect());
            }));

    on<_SocketConnect>((event, emit) {
      client.activate();
    });
    on<_SocketBroadCastBookingStatus>(_onBroadCastBookingStatus);
    on<_SocketBroadCastMessage>(_onBroadCastMessage);
    on<_SocketNotifyHaveBooking>(_onNotifyHaveBooking);
  }
  void _onNotifyHaveBooking(
      _SocketNotifyHaveBooking event, Emitter<SocketState> emit) {
    emit(SocketState.receivedBooking(bookingId: event.bookingId));
  }

  void _onBroadCastMessage(
      _SocketBroadCastMessage event, Emitter<SocketState> emit) {
    emit(SocketState.receivedMessage(message: event.message));
  }

  void _onBroadCastBookingStatus(
      _SocketBroadCastBookingStatus event, Emitter<SocketState> emit) {
    if (event.bookingStatusModel.status == BookingStatus.complete ||
        event.bookingStatusModel.status == BookingStatus.cancelled) {
      timer?.cancel();
    }
    emit(SocketReceivedBookingStatus(bookingStatus: event.bookingStatusModel));
  }

  void listenerBooking() async {
    Logger().i("Start listen booking ");
    client.subscribe(
        destination: "/user/driver_booking",
        callback: (frame) {
          Logger().i("Receive booking  = ${frame.body}");
          var bookingId = frame.body != null
              ? int.parse(jsonDecode(frame.body!)['bookingId'].toString())
              : 0;
          Logger().i("BookingId after cast  = $bookingId");
          if (bookingId != 0) {
            scheduleSendLocation();
            add(SocketEvent.notifyHaveBooking(bookingId: bookingId));
          }
        });
  }

  void listenerBookingSatus() async {
    Logger().i("Start listen booking status");
    client.subscribe(
        destination: "/user/booking_status",
        callback: (frame) {
          Logger().i("Receive booking status = ${frame.body}");
          var bookingStatus = BookingStatusModel.fromJson(
              jsonDecode(frame.body!) as Map<String, dynamic>);

          Logger().i("Status after decode ${bookingStatus.toString()}");
          add(SocketEvent.broadCastBookingStatus(
              bookingStatusModel: bookingStatus));
        });
  }

  void scheduleSendLocation() async {
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      sendLocation();
    });
  }

  void listenerNotify() async {
    Logger().i("Start listen notify");
    client.subscribe(
        destination: "/user/driver_notify",
        callback: (frame) {
          Logger().i("Notify = ${frame.body}");
          var response = jsonDecode(frame.body!)['title'].toString();
          if (response == "HAVEBOOKING") {
            sendLocation();
          }
        });
  }

  void listenerMessage() async {
    Logger().i("Start listen message");
    client.subscribe(
        destination: "/user/message_receive",
        callback: (frame) {
          Logger().i("Receive message = ${frame.body}");
          var message = MessageModel.fromJson(
                  jsonDecode(frame.body!) as Map<String, dynamic>)
              .maptoEntity();
          add(SocketEvent.broadCastMessage(message));
        });
  }

  void updateBearing(double value) {
    bearing = value;
  }

  void updateRoute(String value) {
    route = value;
  }

  void sendLocation() async {
    Position locationData = await Geolocator.getCurrentPosition();
    LatLng latLng = LatLng(locationData.latitude, locationData.longitude);
    var idUser = getUserId();
    var locationInfo = LocationInfoModel(
        idUser: idUser, location: latLng.toUrlValue(), bearing: bearing);
    if (route != null) {
      var listPoint = PolylineCodec.decode(route!).map((e) {
        return LatLng(e[0] / 10, e[1] / 10);
      }).toList();

      var data = map_helper.VietmapPolyline.splitRouteByPoint(listPoint, latLng,
          unit: map_helper.Unit.miles);

      var newRoute = VietmapPolylineDecoder.encodePolyline(data[1]);

      locationInfo = locationInfo.copyWith(routeEncode: newRoute);
    }
    Logger().i(jsonEncode(locationInfo.toJson()));
    client.send(
        destination: '/app/location',
        body: jsonEncode(locationInfo.toJson()),
        headers: {});
  }

  void sendMessage(Message message) async {
    var messageModel = MessageModel.fromEntity(message);
    Logger().i(messageModel.toMessageRequestJson().toString());
    client.send(
        destination: '/app/message_send',
        body: jsonEncode(messageModel.toMessageRequestJson()),
        headers: {});
  }

  void sendBookingStatus(
      BookingStatusRequestModel bookingStatusRequestModel) async {
    Logger().i(jsonEncode(bookingStatusRequestModel.toJson()));
    client.send(
        destination: '/app/booking_status',
        body: jsonEncode(bookingStatusRequestModel.toJson()),
        headers: {});
  }
}
