import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/presentation/pages/home/input_location/input_location_page.dart';
import 'package:injectable/injectable.dart';

part 'booking_bloc.freezed.dart';
part 'booking_event.dart';
part 'booking_state.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState>{
  BookingBloc() : super(const BookingState.initial()){
      on<BookingSelectVehicleType>((event, emit) {
        emit(const BookingState.showAddressSheet());
      });
      on<BookingLocateOnMap>((event, emit) {
        if(event.selectLocation == SelectLocation.pickupLocation){
          emit(const BookingState.locatingPickupLocation());
        }
        else{
          emit(const BookingState.locatingDesLocation());
        }
      });
  }
}