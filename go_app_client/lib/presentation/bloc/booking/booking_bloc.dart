import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/domain/entities/map_autocomplete.dart';
import 'package:go_app_client/domain/entities/map_picker_data.dart';
import 'package:go_app_client/domain/entities/map_reverse.dart';
import 'package:go_app_client/domain/usecases/map/search_address_from_latlng_usecase.dart';
import 'package:go_app_client/domain/usecases/map/search_address_from_text_usecase.dart';
import 'package:go_app_client/presentation/pages/home/input_location/input_location_page.dart';
import 'package:injectable/injectable.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'booking_bloc.freezed.dart';
part 'booking_event.dart';
part 'booking_state.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final SearchAddressFromTextUseCase _searchAddressFromTextUseCase;
  final SearchAddressFromLatLngUseCase _searchAddressFromLatLngUseCase;
  BookingBloc(this._searchAddressFromTextUseCase,
  this._searchAddressFromLatLngUseCase)
      : super(const BookingState.initial()) {
    on<BookingSelectVehicleType>((event, emit) {
      emit(const BookingState.showAddressSheet());
    });
    on<BookingLocateOnMap>((event, emit) {
      if (event.selectLocation == SelectLocation.pickupLocation) {
        emit(const BookingState.locatingPickupLocation());
      } else {
        emit(const BookingState.locatingDesLocation());
      }
    });
    on<BookingSearchAddressFromText>(onSearchAddressFromText);
    on<BookingSearchAddressFromCoordinate>(onSearchAddressFromCoordinate);
  }

  void onSearchAddressFromText(
      BookingSearchAddressFromText event, Emitter<BookingState> emit) async {
    emit(const BookingState.loadingLocations());
    final either = await _searchAddressFromTextUseCase(event.query);
    either.fold((l) => emit(BookingState.loadError(failure: l)),
        (r) => emit(BookingState.loadLocationsSuccess(result: r)));
  }

  void onSearchAddressFromCoordinate(BookingSearchAddressFromCoordinate event, Emitter<BookingState> emit) async{
    emit(const BookingState.loadingLocation());
    final either = await _searchAddressFromLatLngUseCase(LocationPoint(lat: event.coordinate.latitude, long: event.coordinate.longitude));
    either.fold((l) => emit(BookingState.loadError(failure: l)),
        (r) => emit(BookingState.loadLocationSuccess(result: r)));
  }
}
