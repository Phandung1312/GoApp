part of 'booking_bloc.dart';

class BookingState {
  final Booking bookingData;
  const BookingState({required this.bookingData});
}

class BookingInitial extends BookingState {
  BookingInitial() : super(bookingData: const Booking());
}

class BookingLoadInfoSuccess extends BookingState {
  BookingLoadInfoSuccess({required Booking bookingData})
      : super(bookingData: bookingData);
}

class BookingLoadingInfo extends BookingState {
  BookingLoadingInfo() : super(bookingData: const Booking());
}

class BookingLoadInfoError extends BookingState {
  final Failure failure;
  BookingLoadInfoError({required this.failure})
      : super(bookingData: const Booking());
}

class BookingStatusChanged extends BookingState {
  BookingStatusChanged(
      {required BookingStatus bookingStatus, required BookingState state})
      : super(bookingData: state.bookingData.copyWith(status: bookingStatus));
}



