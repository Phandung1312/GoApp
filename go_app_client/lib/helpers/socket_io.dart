import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:socket_io_client/socket_io_client.dart';

@lazySingleton
class SocketIO {
  final Socket socket = io(
      webSocketUrl,
      OptionBuilder()
          .setTransports(['websocket'])
          .setExtraHeaders({'Authorization': 'Bearer $getIdToken()'})
          .enableAutoConnect()
          .build());

  SocketIO() {
    _init();
  }
  void _init() {
    if (socket.disconnected) {
      socket.connect();
      socket.onConnect(
        (_) {
          Logger().i("socket connected");
        },
      );
    }
  }
}
