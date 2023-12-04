

import 'package:dio/dio.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/data/models/booking_price_model.dart';
import 'package:retrofit/retrofit.dart';
part 'booking_api_service.g.dart';
@RestApi(baseUrl: baseUrl)
abstract class BookingApiService{
  factory BookingApiService(Dio dio, {String baseUrl}) = _BookingApiService;

  @GET('bookings/travel-info')
  Future<HttpResponse<BookingPriceModel>> getBookingPrice(
    @Query('pickUpLocation') String pickUpLocation,
    @Query('dropOffLocation') String dropOffLocation
  );
}