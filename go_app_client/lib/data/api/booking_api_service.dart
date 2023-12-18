import 'package:dio/dio.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_client/data/models/booking/booking_cancel_response.dart';
import 'package:go_app_client/data/models/booking/booking_model.dart';
import 'package:go_app_client/data/models/booking/booking_price_model.dart';
import 'package:go_app_client/data/models/booking/booking_request.dart';
import 'package:go_app_client/data/models/driver_info_model.dart';
import 'package:go_app_client/data/models/history/review_model.dart';
import 'package:go_app_client/data/models/history/review_request_model.dart';
import 'package:retrofit/retrofit.dart';
part 'booking_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class BookingApiService {
  factory BookingApiService(Dio dio, {String baseUrl}) = _BookingApiService;

  @GET('bookings/travel-info')
  Future<HttpResponse<BookingPriceModel>> getBookingPrice(
      @Query('pickUpLocation') String pickUpLocation,
      @Query('dropOffLocation') String dropOffLocation);

  @POST("bookings")
  Future<HttpResponse<BookingModel>> createBooking(
      @Body() BookingRequest bookingRequest);

  @GET('drivers/{id}/base-profile')
  Future<HttpResponse<DriverInfoModel>> getDriverInfo(@Path('id') int driverId);

  @GET('bookings/active')
  Future<HttpResponse<BookingModel>> getActiveBooking();

  @POST('reviews')
  Future<HttpResponse<ReviewModel>> createReview(
    @Body() ReviewRequestModel reviewRequest
  );

    @PATCH('bookings/{id}/cancel')
  Future<HttpResponse<BookingCancelResponse>> cancelBooking(
    @Path('id') int id,
    @Body() BookingCancelRequest request
  );
}
