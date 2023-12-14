import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/inject/injection.dart';
import 'package:go_app_client/data/models/booking/booking_request.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/map_autocomplete.dart';
import 'package:go_app_client/domain/entities/map_picker_data.dart';
import 'package:go_app_client/domain/entities/map_place.dart';
import 'package:go_app_client/domain/entities/map_reverse.dart';
import 'package:go_app_client/domain/entities/map_routing_params.dart';
import 'package:go_app_client/domain/entities/path_entity.dart';
import 'package:go_app_client/domain/usecases/booking/create_booking_usecase.dart';
import 'package:go_app_client/domain/usecases/booking/get_booking_price_usecase.dart';
import 'package:go_app_client/domain/usecases/booking/get_driver_info_usecase.dart';
import 'package:go_app_client/domain/usecases/map/find_route_usecase.dart';
import 'package:go_app_client/domain/usecases/map/get_place_detail_usecase.dart';
import 'package:go_app_client/domain/usecases/map/search_address_from_latlng_usecase.dart';
import 'package:go_app_client/domain/usecases/map/search_address_from_text_usecase.dart';
import 'package:go_app_client/extensions/latlng_extension.dart';
import 'package:go_app_client/helpers/easy_loading.dart';
import 'package:go_app_client/presentation/bloc/driver_location/driver_location_cubit.dart';
import 'package:go_app_client/presentation/bloc/socket/socket_bloc.dart';
import 'package:go_app_client/presentation/pages/home/input_location/input_location_page.dart';
import 'package:injectable/injectable.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'booking_bloc.freezed.dart';
part 'booking_event.dart';
part 'booking_state.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final SocketBloc socketBloc;
  StreamSubscription? socketSubscription;
  final SearchAddressFromTextUseCase _searchAddressFromTextUseCase;
  final SearchAddressFromLatLngUseCase _searchAddressFromLatLngUseCase;
  final GetPlaceDetailUseCase _getPlaceDetailUseCase;
  final FindRouteUseCase _findRouteUseCase;
  final GetBookingPriceUseCase _getBookingPriceUseCase;
  final CreateBookingUseCase _createBookingUseCase;
  final GetDriverInfoUseCase _getDriverInfoUseCase;
  BookingBloc(
      this.socketBloc,
      this._searchAddressFromTextUseCase,
      this._searchAddressFromLatLngUseCase,
      this._getPlaceDetailUseCase,
      this._findRouteUseCase,
      this._getBookingPriceUseCase,
      this._createBookingUseCase,
      this._getDriverInfoUseCase)
      : super(const BookingInitial()) {
    socketSubscription = socketBloc.stream.listen((state) {
      state.whenOrNull(receivedBookingStatus: (bookingStatus) {
        switch (bookingStatus) {
          case BookingStatus.paid:
            add(const BookingEvent.pay());
          case BookingStatus.onRide:
            add(BookingChangeStatus(bookingStatus: bookingStatus));
            break;
          case BookingStatus.complete:
            add(BookingChangeStatus(bookingStatus: bookingStatus));
            break;
          default:
            break;
        }
      }, receivedDriverInfo: (driverId) {
        add(BookingLoadDriverInfo(driverId: driverId));
      });
    });
    on<BookingSelectVehicleType>(_onSelectVehicleType);
    on<BookingLocateOnMap>(_onLocatingOnMap);
    on<BookingSearchAddressFromText>(_onSearchAddressFromText);
    on<BookingSearchAddressFromCoordinate>(_onSearchAddressFromCoordinate);
    on<BookingGetAddressDetail>(_onGetAddressDetail);
    on<BookingUpdateRouteParams>(_onUpdateRouteParams);
    on<BookingPickAddress>(_onPickAddress);
    on<BookingGetDirection>(_onGetDirection);
    on<BookingChangeRouteByVehicle>(_onChangeRouteByVehicle);

    on<BookingPay>(_onPay);
    on<BookingCreateOrder>(_onCreateOrder);
    on<BookingLoadDriverInfo>(_onLoadDriverInfo);
    on<BookingChangeStatus>(_onChangeBookingStatus);
  }
  void _onPay(BookingPay event, Emitter<BookingState> emit) async {
    var newState = BookingState(
      mapRoutingParams: state.mapRoutingParams,
      path: state.path,
      booking: state.booking?.copyWith(status: BookingStatus.paid),
    );
    emit(BookingFoundingDriver(state: newState));
  }

  void _onChangeBookingStatus(
      BookingChangeStatus event, Emitter<BookingState> emit) {
    var currentBooking = state.booking;
    currentBooking = currentBooking?.copyWith(status: event.bookingStatus);
    emit(BookingStatusUpdated(booking: currentBooking!, state: state));
  }

  void _onLoadDriverInfo(
      BookingLoadDriverInfo event, Emitter<BookingState> emit) async {
    var either = await _getDriverInfoUseCase(event.driverId);
    either.fold((l) => emit(BookingLoadError(state: state, failure: l)), (r) {
      emit(BookingLoadDriverSuccess(driverInfo: r, state: state));
      getIt<DriverLocationCubit>().onUpdateVehicleType(r.vehicleType);
      socketBloc.listenerDriverLocation();
    });
  }

  void _onChangeRouteByVehicle(
      BookingChangeRouteByVehicle event, Emitter<BookingState> emit) async {
    var params = state.mapRoutingParams;
    params = params?.copyWith(vehicleType: event.vehicleType);
    EasyLoadingHelper.simplyCustomize(Colors.green);
    EasyLoading.show();
    emit(BookingUpdateSucess(
        mapRoutingParams: params!, bookingPrices: state.bookingPrices));
    add(BookingGetDirection(
        from: params.pickupLocation!, to: params.destinationLocation!));
  }

  void _onSelectVehicleType(
      BookingSelectVehicleType event, Emitter<BookingState> emit) {
    var params = state.mapRoutingParams;
    params = params?.copyWith(vehicleType: event.vehicleType);
    emit(BookingUpdateSucess(mapRoutingParams: params!));
  }

  void _onLocatingOnMap(
      BookingLocateOnMap event, Emitter<BookingState> emit) async {
    EasyLoadingHelper.simplyCustomize(Colors.green);
    EasyLoading.show();
    if (event.refId != null) {
      var either = await _getPlaceDetailUseCase(event.refId!);
      EasyLoading.dismiss();
      either.fold(
          (l) => emit(BookingLoadError(state: state, failure: l)),
          (r) => emit(BookingLocatingLocation(
              state: state,
              isPickupLocation:
                  event.selectLocation == SelectLocation.pickupLocation,
              selectedLocation: LatLng(r.lat, r.lng))));
    } else {
      EasyLoading.dismiss();
      emit(BookingLocatingLocation(
          state: state,
          isPickupLocation:
              event.selectLocation == SelectLocation.pickupLocation,
          selectedLocation: null));
    }
  }

  void _onSearchAddressFromText(
      BookingSearchAddressFromText event, Emitter<BookingState> emit) async {
    emit(BookingLoadingLocations(state));
    final either = await _searchAddressFromTextUseCase(event.query);
    either.fold((l) => emit(BookingLoadError(state: state, failure: l)),
        (r) => emit(BookingLoadLocationsSuccess(state: state, result: r)));
  }

  void _onSearchAddressFromCoordinate(BookingSearchAddressFromCoordinate event,
      Emitter<BookingState> emit) async {
    emit(BookingLoadingLocation(state));
    final either = await _searchAddressFromLatLngUseCase(LocationPoint(
        lat: event.coordinate.latitude, long: event.coordinate.longitude));
    either.fold((l) => emit(BookingLoadError(state: state, failure: l)),
        (r) => emit(BookingLoadLocationSuccess(state: state, result: r)));
  }

  void _onGetAddressDetail(
      BookingGetAddressDetail event, Emitter<BookingState> emit) async {
    EasyLoadingHelper.simplyCustomize(Colors.green);
    EasyLoading.show();
    var either = await _getPlaceDetailUseCase(event.model.refId);
    EasyLoading.dismiss();
    either.fold((l) => emit(BookingLoadError(state: state, failure: l)),
        (r) => emit(BookingLoadPlaceDetailSuccess(state: state, mapPlace: r)));
  }

  void _onUpdateRouteParams(
      BookingUpdateRouteParams event, Emitter<BookingState> emit) async {
    MapRoutingParams params = state.mapRoutingParams ??
        const MapRoutingParams(
            vehicleType: VehicleType.motorcycle,
            pickupLocation: null,
            destinationLocation: null);
    params = params.copyWith(
        pickupLocation: event.pickupPoint ?? params.pickupLocation,
        destinationLocation:
            event.destinationPoint ?? params.destinationLocation);
    try {
      if (params.pickupLocation == null) {
        var pickupPoint = (await Geolocator.getCurrentPosition()).toLatLng();
        params = params.copyWith(
            pickupLocation: pickupPoint, pickupDescription: 'Vị trí của bạn');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    params = params.copyWith(
        pickupDescription: event.pickupDescription ?? params.pickupDescription,
        destinationDescription:
            event.destinationDesciption ?? params.destinationDescription);
    if (params.pickupLocation != null && params.destinationLocation != null) {
      EasyLoading.show();
      var either = await _getBookingPriceUseCase(params);
      either.fold(
          (l) => emit(BookingLoadError(state: state, failure: l)),
          (r) =>
              emit(BookingState(mapRoutingParams: params, bookingPrices: r)));
      add(BookingGetDirection(
          from: params.pickupLocation!, to: params.destinationLocation!));
    } else {
      emit(BookingUpdateSucess(mapRoutingParams: params));
    }
  }

  _onGetDirection(BookingGetDirection event, Emitter<BookingState> emit) async {
    var params = state.mapRoutingParams!;
    if (params.pickupDescription == 'Vị trí của bạn') {
      var currentPointResult = await _searchAddressFromLatLngUseCase(
          LocationPoint(
              lat: params.pickupLocation!.latitude,
              long: params.pickupLocation!.longitude));
      currentPointResult
          .fold((l) => emit(BookingLoadError(state: state, failure: l)), (r) {
        params = params.copyWith(pickupDescription: r.display);
        emit(BookingUpdateSucess(
            mapRoutingParams: params, bookingPrices: state.bookingPrices));
      });
    }
    var either = await _findRouteUseCase(params);
    EasyLoading.dismiss();
    either.fold((l) => emit(BookingLoadError(state: state, failure: l)), (r) {
      if (r.points.isEmpty) {
        emit(BookingLoadError(
            state: state,
            failure: ExceptionFailure(
                Exception("Tìm tuyến đường thất bại, xin vui lòng thử lại"))));
      } else {
        emit(BookingGetDirectionSuccess(path: r, state: state));
      }
    });
  }

  void _onPickAddress(
      BookingPickAddress event, Emitter<BookingState> emit) async {
    emit(BookingLoadPlaceDetailSuccess(
        state: state,
        mapPlace: MapPlace(
            display: event.mapPickerData.display ?? "",
            lat: event.mapPickerData.latLng.latitude,
            lng: event.mapPickerData.latLng.longitude)));
  }

  void _onCreateOrder(
      BookingCreateOrder event, Emitter<BookingState> emit) async {
    EasyLoading.show();
    final bookingRequest = BookingRequest(
        pickUpLocation:
            state.mapRoutingParams?.pickupLocation?.toUrlValue() ?? "",
        dropOffLocation:
            state.mapRoutingParams?.destinationLocation?.toUrlValue() ?? "",
        vehicleType: event.vehicleType);
    var either = await _createBookingUseCase(bookingRequest);
    EasyLoading.dismiss();
    socketBloc.listenerBooking();
    socketBloc.listenerDriverInfo();
    either.fold((l) => emit(BookingLoadError(state: state, failure: l)),
        (r) => emit(BookingVisiblePayment(booking: r, state: state)));
  }
}
