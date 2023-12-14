import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/data/models/booking/booking_status_request_model.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/entities/map_reverse.dart';
import 'package:go_app_driver/domain/usecases/booking/get_booking_usecase.dart';
import 'package:go_app_driver/domain/usecases/booking/get_customer_info_usecase.dart';
import 'package:go_app_driver/domain/usecases/map/search_address_from_latlng_usecase.dart';
import 'package:go_app_driver/extensions/enum_extension.dart';
import 'package:go_app_driver/helpers/share_prefereces.dart';
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
  BookingBloc(
      {required this.socketBloc,
      required this.getBookingUseCase,
      required this.searchAddressFromLatLngUseCase,
      required this.getCustomerInfoUseCase})
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
  }
  void _onLoadBookingInfo(
      BookingLoadInfo event, Emitter<BookingState> emit) async {
    emit(BookingLoadingInfo());
    var either = await getBookingUseCase(event.bookingId);
    await either.fold((l) async {
      emit(BookingLoadInfoError(failure: l));
    }, (r) async {
      var bookingData = r;
      var location = r.status == BookingStatus.found
          ? r.pickupLocation
          : r.dropOffLocation;
      var value = await Future.wait([
        getCustomerInfoUseCase(r.customerInfo.id),
        searchAddressFromLatLngUseCase(
            LocationPoint(lat: location.latitude, long: location.longitude))
      ]);
      if (value[0].isLeft() || value[1].isLeft()) {
        var failure = value[0].fold((left) => left, (right) => null) ??
            value[1].fold((left) => left, (right) => null);
        emit(BookingLoadInfoError(failure: failure!));
      } else {
        var customerInfo =
            value[0].getOrElse(() => const CustomerInfo()) as CustomerInfo?;
        var mapReverse =
            value[1].getOrElse(() => const MapReverse()) as MapReverse?;
        emit(BookingLoadInfoSuccess(
            bookingData: bookingData.copyWith(
                incomingDesAddress: mapReverse!.display,
                customerInfo: customerInfo!)));
      }
    });
  }

  void _onSendBookingStatus(
      BookingSendBookingStatus event, Emitter<BookingState> emit) {
    socketBloc.sendBookingStatus(BookingStatusRequestModel(
        uid: getUserId(),
        bookingId: state.bookingData.id,
        bookingStatus: state.bookingData.status.nextStatus()));
  }

  void _onChangeBookingSatus(
      BookingChangeBookingStatus event, Emitter<BookingState> emit) async {
    var newState = state;
    switch (event.bookingStatus) {
      case BookingStatus.onRide:
        {
          var either = await searchAddressFromLatLngUseCase(LocationPoint(
              lat: state.bookingData.dropOffLocation.latitude,
              long: state.bookingData.dropOffLocation.longitude));
          either.fold((l) => null, (r) {
            newState = BookingState(
                bookingData:
                    state.bookingData.copyWith(incomingDesAddress: r.display));
          });
        }
        break;
      case BookingStatus.cancelled:
      default:
        emit(BookingStatusChanged(
            bookingStatus: event.bookingStatus, state: newState));
        break;
    }
  }
}
