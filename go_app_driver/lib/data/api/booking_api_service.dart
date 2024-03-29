import 'package:dio/dio.dart';
import 'package:go_app_driver/config/constants.dart';
import 'package:go_app_driver/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_driver/data/models/booking/booking_cancel_response.dart';
import 'package:go_app_driver/data/models/booking/booking_model.dart';
import 'package:go_app_driver/data/models/booking/driver_status_model.dart';
import 'package:go_app_driver/data/models/customer_info_model.dart';
import 'package:go_app_driver/data/models/pagination_model.dart';
import 'package:retrofit/retrofit.dart';
part 'booking_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class BookingApiService {
  factory BookingApiService(Dio dio, {String baseUrl}) = _BookingApiService;

  @GET('bookings/{id}')
  Future<HttpResponse<BookingModel>> getBookingInfo(@Path('id') int id);

  @GET('customers/{id}/base-info')
  Future<HttpResponse<CustomerInfoModel>> getCustomerInfo(@Path('id') int id);

  @PUT('drivers/{id}/status')
  Future<HttpResponse<DriverStatusModel>> changeDriverStatus(
    @Path() int id,
  );

  @GET('bookings/active')
  Future<HttpResponse<BookingModel>> getActiveBooking();

  @PATCH('bookings/{id}/cancel')
  Future<HttpResponse<BookingCancelResponse>> cancelBooking(
      @Path('id') int id, @Body() BookingCancelRequest request);

  @GET('bookings')
  Future<HttpResponse<PaginationModel>> getHistories(
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('status') String? status,
    @Query('sortType') String? sortType,
    @Query('sortFiled') String? sortFiled,
  );
}
