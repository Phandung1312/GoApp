import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_client/data/models/booking/driver_location_model.dart';
import 'package:go_app_client/data/models/chat/message_model.dart';
import 'package:go_app_client/domain/entities/driver_location.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/message.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';

part 'socket_bloc.freezed.dart';
part 'socket_event.dart';
part 'socket_state.dart';

@lazySingleton
class SocketBloc extends Bloc<SocketEvent, SocketState> {
  late final StompClient client;
  SocketBloc() : super(const SocketState.initial()) {
    String token = getIdToken();

    client = StompClient(
        config: StompConfig.sockJS(
            url: "$webSocketUrl?Authorization=Bearer $token",
          
            onConnect: (_) {
              Logger().i("Socket connected");

              listenerMessage();
            },
            onDisconnect: (_) {
              Logger().i("Socket disconnected");
              add(const SocketEvent.connect());
            },
            onWebSocketError: (data) {
              Logger().i("Socket error ${data.toString()}");
            }));
            

    on<_SocketConnect>((event, emit) {
      client.activate();
      
    });

    on<SocketSendBookingStatus>(_sendBookingStatus);
    on<SocketBroadCastDriverInfo>(_onBroadCastDriverInfo);
    on<SocketBroadCastDriverLocation>(_onBroadCastDriverLocation);
    on<_SocketBroadCastMessage>(_onBroadCastMessage);

  }
 void _onBroadCastMessage(_SocketBroadCastMessage event,Emitter<SocketState> emit) {
    emit(SocketState.receivedMessage(message: event.message));
  }
  void _onBroadCastDriverInfo(SocketBroadCastDriverInfo event,Emitter<SocketState> emit) async{
    emit(SocketReceivedDriverInfo(driverId: event.driverId));
  }
   void _onBroadCastDriverLocation(SocketBroadCastDriverLocation event,Emitter<SocketState> emit) async{
    emit(SocketReceivedDriverLocation(driverLocation: event.driverLocation));
  }
  void _sendBookingStatus(
      SocketSendBookingStatus event, Emitter<SocketState> emit) {
    emit(SocketState.receivedBookingStatus(bookingStatus: event.status));
  }

  void listenerBooking() async {
    Logger().i("Start listen booking status");
    client.subscribe(
        destination: SocketUrlConstant.RECEIVE_BOOKING_STATUS,
        callback: (frame) {
          Logger().i("Receive booking status = ${frame.body}");
          var bookingStatus = frame.body != null   
              ? const BookingStatusConverter()
                  .fromJson((jsonDecode(frame.body!))['status'])
              : BookingStatus.unknown;
          add(SocketEvent.sendBookingStatus(status: bookingStatus));
        });
  }

  void listenerDriverInfo() async {
    Logger().i("Start listen driver info");
    client.subscribe(
        destination: SocketUrlConstant.RECEIVE_DRIVER_INFO,
        callback: (frame) {
          Logger().i("Receive driver info = ${frame.body}");
          var driverId  = jsonDecode(frame.body!)['driverId'] as int;
          add(SocketEvent.broadCastDriverInfo(driverId: driverId));
        });
  }
  void listenerDriverLocation() async {
    Logger().i("Start listen driver location");
    client.subscribe(
        destination: SocketUrlConstant.RECEIVE_DRIVER_LOCATION,
        callback: (frame) {
          // Logger().i("Receive driver location = ${frame.body}");
          var driverLocation = DriverLocationModel.fromJson(
              jsonDecode(frame.body!) as Map<String, dynamic>).maptoEntity();
          add(SocketEvent.broadCastDriverLocation(driverLocation: driverLocation));
        });
  }
  void listenerMessage(
      ) async {
    Logger().i("Start listen message");
    client.subscribe(
        destination: "/user/message_receive",
        callback: (frame) {
          Logger().i("Receive message = ${frame.body}");
          var message = MessageModel.fromJson(
              jsonDecode(frame.body!) as Map<String, dynamic>).maptoEntity();
          add(SocketEvent.broadCastMessage(message));
        });
  }
 void sendMessage(Message message) async {
    var messageModel = MessageModel.fromEntity(message);
    Logger().i(messageModel.toMessageRequestJson().toString());
    client.send(
        destination: '/app/message_send',
        body: jsonEncode(messageModel.toMessageRequestJson()),
        headers: {});
  }
  @override
  Future<void> close() {
    client.deactivate();
    return super.close();
  }
}
