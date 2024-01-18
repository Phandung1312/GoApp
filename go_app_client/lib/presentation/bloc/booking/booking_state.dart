part of 'booking_bloc.dart';

class BookingState extends Equatable {
  final MapRoutingParams? mapRoutingParams;
  final PathEntity? path;
  final Map<VehicleType, num>? bookingPrices;
  final Booking? booking;
  final DriverInfo? driverInfo;
  final List<LatLng>? driverRoute;

  const BookingState(
      {this.mapRoutingParams,
      this.path,
      this.bookingPrices,
      this.booking,
      this.driverInfo,
      this.driverRoute});

  @override
  List<Object?> get props => [mapRoutingParams];
}

class BookingInitial extends BookingState {
  const BookingInitial()
      : super(
            mapRoutingParams: const MapRoutingParams(
          vehicleType: VehicleType.motorcycle,
        ));
}

class BookingLocatingLocation extends BookingState {
  final bool isPickupLocation;
  final LatLng? selectedLocation;
  BookingLocatingLocation(
      {required BookingState state,
      required this.isPickupLocation,
      this.selectedLocation})
      : super(
          mapRoutingParams: state.mapRoutingParams,
        );
}

class BookingLoadingLocation extends BookingState {
  BookingLoadingLocation(BookingState state)
      : super(
          mapRoutingParams: state.mapRoutingParams,
        );
}

class BookingLoadingLocations extends BookingState {
  BookingLoadingLocations(BookingState state)
      : super(
          mapRoutingParams: state.mapRoutingParams,
        );
}

class BookingLoadLocationSuccess extends BookingState {
  final MapReverse result;
  BookingLoadLocationSuccess(
      {required BookingState state, required this.result})
      : super(
          mapRoutingParams: state.mapRoutingParams,
        );
}

class BookingLoadLocationsSuccess extends BookingState {
  final List<MapAutoComplete> result;
  BookingLoadLocationsSuccess(
      {required BookingState state, required this.result})
      : super(
          mapRoutingParams: state.mapRoutingParams,
        );
}

class BookingLoadError extends BookingState {
  final Failure failure;
  BookingLoadError({required BookingState state, required this.failure})
      : super(
          mapRoutingParams: state.mapRoutingParams,
        );
}

class BookingLoadPlaceDetailSuccess extends BookingState {
  final MapPlace mapPlace;
  BookingLoadPlaceDetailSuccess(
      {required BookingState state, required this.mapPlace})
      : super(
          mapRoutingParams: state.mapRoutingParams,
        );
  @override
  List<Object?> get props => [mapRoutingParams, mapPlace];
}

class BookingUpdateSucess extends BookingState {
  const BookingUpdateSucess(
      {required MapRoutingParams mapRoutingParams,
      Map<VehicleType, num>? bookingPrices})
      : super(mapRoutingParams: mapRoutingParams, bookingPrices: bookingPrices);
}

class BookingGetDirectionSuccess extends BookingState {
  BookingGetDirectionSuccess(
      {required PathEntity path, required BookingState state})
      : super(
            mapRoutingParams: state.mapRoutingParams,
            path: path,
            booking: state.booking,
            bookingPrices: state.bookingPrices);
  @override
  List<Object?> get props => [mapRoutingParams, path];
}

class BookingVisiblePayment extends BookingState {
  BookingVisiblePayment({required Booking booking, required BookingState state})
      : super(
            mapRoutingParams: state.mapRoutingParams,
            path: state.path,
            bookingPrices: state.bookingPrices,
            booking: booking);
  @override
  List<Object?> get props => [];
}

class BookingLoadingDriver extends BookingState {
  BookingLoadingDriver({required BookingState state})
      : super(
          mapRoutingParams: state.mapRoutingParams,
          path: state.path,
          bookingPrices: state.bookingPrices,
        );
}

class BookingLoadDriverSuccess extends BookingState {
  BookingLoadDriverSuccess(
      {required DriverInfo driverInfo, required BookingState state})
      : super(
            mapRoutingParams: state.mapRoutingParams,
            path: state.path,
            booking: state.booking,
            driverInfo: driverInfo);
}

class BookingLoadingOrder extends BookingState {
  BookingLoadingOrder({required BookingState state})
      : super(
            mapRoutingParams: state.mapRoutingParams,
            path: state.path,
            bookingPrices: state.bookingPrices);
}

class BookingLoadOrderSuccess extends BookingState {
  BookingLoadOrderSuccess(
      {required Booking booking, required BookingState state})
      : super(
            mapRoutingParams: state.mapRoutingParams,
            path: state.path,
            booking: booking);
}

class BookingFoundingDriver extends BookingState {
  BookingFoundingDriver({required BookingState state})
      : super(
            mapRoutingParams: state.mapRoutingParams,
            path: state.path,
            bookingPrices: state.bookingPrices,
            booking: state.booking);
}

class BookingStatusUpdated extends BookingState {
  BookingStatusUpdated({required Booking booking, required BookingState state})
      : super(
            mapRoutingParams: state.mapRoutingParams,
            path: state.path,
            booking: booking,
            driverInfo: state.driverInfo);

  @override
  List<Object?> get props => [booking];
}

class BookingLoadingData extends BookingState {
  const BookingLoadingData() : super();
}

class BookingLoadDataSuccess extends BookingState {
  BookingLoadDataSuccess({required BookingState state})
      : super(
            mapRoutingParams: state.mapRoutingParams,
            path: state.path,
            booking: state.booking,
            driverInfo: state.driverInfo);
  @override
  List<Object?> get props => [booking, driverInfo];
}

class BookingDriverRouteUpdated extends BookingState {
  BookingDriverRouteUpdated(
      {required List<LatLng> driverRoute, required BookingState state})
      : super(
            driverRoute: driverRoute,
            mapRoutingParams: state.mapRoutingParams,
            path: state.path,
            booking: state.booking,
            driverInfo: state.driverInfo);
  @override
  List<Object?> get props => [driverRoute];
}


class BookingCancelSuccess extends BookingState{
  const BookingCancelSuccess() : super();
}

