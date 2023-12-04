import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:socket_io_client/socket_io_client.dart';

part 'socket_bloc.freezed.dart';
part 'socket_event.dart';
part 'socket_state.dart';

@lazySingleton
class SocketBloc extends Bloc<SocketEvent, SocketState> {
  late final Socket _socket;
  SocketBloc() : super(const SocketState.initial()) {
    _socket = io(
        webSocketUrl,
        OptionBuilder()
            .setTransports(['websocket'])
            .setExtraHeaders({'authorization': 'Bearer $getIdToken()'})
            .enableAutoConnect()
            .build());
    _socket.onConnect((data) {
      Logger().i("socket connected");
    });
    on<_SocketConnect>((event, emit) {
      if (_socket.disconnected) {
        _socket.connect();
      }
    });
  }
  @override
  Future<void> close() {
    _socket.dispose();
    return super.close();
  }
}
