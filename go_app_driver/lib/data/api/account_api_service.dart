import 'dart:io';

import 'package:dio/dio.dart';
import 'package:go_app_driver/config/constants.dart';
import 'package:go_app_driver/data/models/driver_info_model.dart';
import 'package:go_app_driver/data/models/login_info_model.dart';
import 'package:retrofit/retrofit.dart';
part 'account_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class AccountApiService {
  factory AccountApiService(Dio dio, {String baseUrl}) = _AccountApiService;

  @GET('account/login')
  Future<HttpResponse<LoginInfoModel>> login();

  @POST('account/driver')
  @MultiPart()
  Future<HttpResponse<DriverInfoModel>> regiterDriver(
      @Part(name: "fullName") String fullName,
      @Part(name: "dateOfBirth") String dateOfBirth,
      @Part(name: "phoneNumber") String phoneNumber,
      @Part(name: "isMale") bool gender,
      @Part(name: "avatar") File avatar,
      @Part(name: "idCard") String idCard,
      @Part(name: "licensePlate") String licensePlate,
      @Part(name: "drivingLicense") String drivingLicense,
      @Part(name: "idCardImg") List<File> idCardImgs,
      @Part(name: "drivingLicenseImg") List<File> licenseImgs,
      @Part(name: "vehicleType") String vehicleType);

  @GET('drivers')
  Future<HttpResponse<DriverInfoModel>> getAccount(
    @Query('id') int id,
  );
}
