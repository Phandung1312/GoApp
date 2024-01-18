import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_driver/data/models/booking/booking_status_request_model.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/usecases/booking/cancel_booking_usecase.dart';
import 'package:go_app_driver/domain/usecases/booking/get_booking_usecase.dart';
import 'package:go_app_driver/domain/usecases/booking/get_customer_info_usecase.dart';
import 'package:go_app_driver/domain/usecases/map/search_address_from_latlng_usecase.dart';
import 'package:go_app_driver/extensions/enum_extension.dart';
import 'package:go_app_driver/helpers/share_prefereces.dart';
import 'package:go_app_driver/helpers/toast.dart';
import 'package:go_app_driver/presentation/bloc/socket/socket_bloc.dart';
import 'package:injectable/injectable.dart';

part 'booking_bloc.freezed.dart';
part 'booking_event.dart';
part 'booking_state.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final SocketBloc socketBloc;
  StreamSubscription? socketSubscription;
  GetBookingUseCase getBookingUseCase;
  SearchAddressFromLatLngUseCase searchAddressFromLatLngUseCase;
  GetCustomerInfoUseCase getCustomerInfoUseCase;
  CancelBookingUseCase cancelBookingUseCase;
  BookingBloc(
      {required this.socketBloc,
      required this.getBookingUseCase,
      required this.searchAddressFromLatLngUseCase,
      required this.getCustomerInfoUseCase,
      required this.cancelBookingUseCase})
      : super(BookingInitial()) {
    socketSubscription = socketBloc.stream.listen((state) {
      state.whenOrNull(receivedBookingStatus: (bookingStatusModel) {
        add(BookingEvent.changeBookingStatus(
            bookingStatus: bookingStatusModel.status));
      });
    });
    on<BookingLoadInfo>(_onLoadBookingInfo);
    on<BookingSendBookingStatus>(_onSendBookingStatus);
    on<BookingChangeBookingStatus>(_onChangeBookingSatus);
    on<BookingCancel>(_onCancelBooking);
  }
  void _onLoadBookingInfo(
      BookingLoadInfo event, Emitter<BookingState> emit) async {
    emit(BookingLoadingInfo());
    var either = await getBookingUseCase(event.bookingId);
    await either.fold((l) async {
      emit(BookingLoadInfoError(failure: l));
    }, (r) async {
      emit(BookingLoadInfoSuccess(bookingData: r));
    });
  }

  void _onSendBookingStatus(
      BookingSendBookingStatus event, Emitter<BookingState> emit) {
    EasyLoading.show();
    Future.delayed(const Duration(seconds: 10), () {
      if (EasyLoading.isShow) {
        EasyLoading.dismiss();
      }
    });
    if(state.bookingData.status == BookingStatus.found){
      ToastHelper.showToast(message: "Đã thông báo bạn đã đến nơi cho khách");
    }
    socketBloc.sendBookingStatus(BookingStatusRequestModel(
        uid: getUserId(),
        bookingId: state.bookingData.id,
        bookingStatus: state.bookingData.status.nextStatus()));
  }

  void _onChangeBookingSatus(
      BookingChangeBookingStatus event, Emitter<BookingState> emit) async {
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
    var newState = state;
    emit(BookingStatusChanged(
        bookingStatus: event.bookingStatus, state: newState));
  }

  void _onCancelBooking(BookingCancel event, Emitter<BookingState> emit) async {
    
    var either = await cancelBookingUseCase(
        event.request.copyWith(bookingId: state.bookingData.id));
    either.fold((l) => null, (r) => null);
  }
}
