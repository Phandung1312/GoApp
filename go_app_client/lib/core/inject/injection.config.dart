// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_app_client/core/inject/register_module.dart' as _i45;
import 'package:go_app_client/core/network/network_info.dart' as _i11;
import 'package:go_app_client/data/api/account_api_service.dart' as _i15;
import 'package:go_app_client/data/api/booking_api_service.dart' as _i16;
import 'package:go_app_client/data/api/chat_api_service.dart' as _i17;
import 'package:go_app_client/data/api/map_api_service.dart' as _i8;
import 'package:go_app_client/data/datasources/account/account_remote_datasource.dart'
    as _i20;
import 'package:go_app_client/data/datasources/booking/booking_remote_datasource.dart'
    as _i21;
import 'package:go_app_client/data/datasources/chat/chat_remote_datasource.dart'
    as _i22;
import 'package:go_app_client/data/datasources/map/map_remote_datasource.dart'
    as _i23;
import 'package:go_app_client/data/mappers/account_model_mapper.dart' as _i3;
import 'package:go_app_client/data/mappers/instruction_model_mapper.dart'
    as _i6;
import 'package:go_app_client/data/mappers/map_autocomplete_mapper.dart' as _i9;
import 'package:go_app_client/data/mappers/map_reverse_mapper.dart' as _i10;
import 'package:go_app_client/data/repositories/acccount_repository_impl.dart'
    as _i29;
import 'package:go_app_client/data/repositories/boooking_repository_impl.dart'
    as _i31;
import 'package:go_app_client/data/repositories/chat_repository_impl.dart'
    as _i33;
import 'package:go_app_client/data/repositories/map_repository_impl.dart'
    as _i25;
import 'package:go_app_client/domain/repositories/account_repository.dart'
    as _i28;
import 'package:go_app_client/domain/repositories/booking_repository.dart'
    as _i30;
import 'package:go_app_client/domain/repositories/chat_repository.dart' as _i32;
import 'package:go_app_client/domain/repositories/map_repository.dart' as _i24;
import 'package:go_app_client/domain/usecases/account/login_usecase.dart'
    as _i40;
import 'package:go_app_client/domain/usecases/account/register_customer_usecase.dart'
    as _i41;
import 'package:go_app_client/domain/usecases/booking/create_booking_usecase.dart'
    as _i34;
import 'package:go_app_client/domain/usecases/booking/get_all_messages_usecase.dart'
    as _i36;
import 'package:go_app_client/domain/usecases/booking/get_booking_price_usecase.dart'
    as _i37;
import 'package:go_app_client/domain/usecases/booking/get_driver_info_usecase.dart'
    as _i38;
import 'package:go_app_client/domain/usecases/map/find_route_usecase.dart'
    as _i35;
import 'package:go_app_client/domain/usecases/map/get_place_detail_usecase.dart'
    as _i39;
import 'package:go_app_client/domain/usecases/map/search_address_from_latlng_usecase.dart'
    as _i26;
import 'package:go_app_client/domain/usecases/map/search_address_from_text_usecase.dart'
    as _i27;
import 'package:go_app_client/helpers/socket_io.dart' as _i14;
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart'
    as _i42;
import 'package:go_app_client/presentation/bloc/chat/chat/chat_cubit.dart'
    as _i43;
import 'package:go_app_client/presentation/bloc/driver_location/driver_location_cubit.dart'
    as _i18;
import 'package:go_app_client/presentation/bloc/history/history_bloc.dart'
    as _i5;
import 'package:go_app_client/presentation/bloc/home/home_bloc.dart' as _i19;
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart' as _i44;
import 'package:go_app_client/presentation/bloc/socket/socket_bloc.dart'
    as _i13;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AccountModelMapper>(() => _i3.AccountModelMapper());
    gh.lazySingleton<_i4.Dio>(
      () => registerModule.dio(),
      instanceName: 'Map',
    );
    gh.lazySingleton<_i4.Dio>(
      () => registerModule.dioApp(),
      instanceName: 'App',
    );
    gh.factory<_i5.HistoryBloc>(() => _i5.HistoryBloc());
    gh.factory<_i6.InstructionModelMapper>(() => _i6.InstructionModelMapper());
    gh.lazySingleton<_i7.InternetConnectionChecker>(
        () => registerModule.connectionChecker);
    gh.lazySingleton<_i8.MapApiService>(
        () => registerModule.mapApiService(gh<_i4.Dio>(instanceName: 'Map')));
    gh.factory<_i9.MapAutoCompleteMapper>(() => _i9.MapAutoCompleteMapper());
    gh.factory<_i10.MapReverseMapper>(() => _i10.MapReverseMapper());
    gh.lazySingleton<_i11.NetworkInfo>(
        () => _i11.NetworkInfo(gh<_i7.InternetConnectionChecker>()));
    await gh.factoryAsync<_i12.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i13.SocketBloc>(() => _i13.SocketBloc());
    gh.lazySingleton<_i14.SocketIO>(() => _i14.SocketIO());
    gh.lazySingleton<_i15.AccountApiService>(() =>
        registerModule.accountApiService(gh<_i4.Dio>(instanceName: 'App')));
    gh.lazySingleton<_i16.BookingApiService>(() =>
        registerModule.bookingApiService(gh<_i4.Dio>(instanceName: 'App')));
    gh.lazySingleton<_i17.ChatApiService>(
        () => registerModule.chatApiService(gh<_i4.Dio>(instanceName: 'App')));
    gh.lazySingleton<_i18.DriverLocationCubit>(
        () => _i18.DriverLocationCubit(gh<_i13.SocketBloc>()));
    gh.factory<_i19.HomeBloc>(
        () => _i19.HomeBloc(socketBloc: gh<_i13.SocketBloc>()));
    gh.lazySingleton<_i20.IAccountRemoteDataSource>(
        () => _i20.AccountRemoteDateSource(gh<_i15.AccountApiService>()));
    gh.lazySingleton<_i21.IBookingRemoteDataSource>(
        () => _i21.BookingRemoteDataSource(gh<_i16.BookingApiService>()));
    gh.lazySingleton<_i22.IChatRemoteDataSource>(
        () => _i22.ChatRemoteDataSource(gh<_i17.ChatApiService>()));
    gh.lazySingleton<_i23.IMapRemoteDataSource>(() => _i23.MapRemoteDataSource(
          gh<_i9.MapAutoCompleteMapper>(),
          gh<_i8.MapApiService>(),
          gh<_i10.MapReverseMapper>(),
        ));
    gh.lazySingleton<_i24.MapRepository>(() => _i25.MapRepositoryImpl(
          gh<_i11.NetworkInfo>(),
          gh<_i23.IMapRemoteDataSource>(),
        ));
    gh.lazySingleton<_i26.SearchAddressFromLatLngUseCase>(
        () => _i26.SearchAddressFromLatLngUseCase(gh<_i24.MapRepository>()));
    gh.lazySingleton<_i27.SearchAddressFromTextUseCase>(
        () => _i27.SearchAddressFromTextUseCase(gh<_i24.MapRepository>()));
    gh.lazySingleton<_i28.AccountRepository>(() => _i29.AccountRepositoryImpl(
          gh<_i11.NetworkInfo>(),
          gh<_i20.IAccountRemoteDataSource>(),
          gh<_i12.SharedPreferences>(),
        ));
    gh.lazySingleton<_i30.BookingRepository>(() => _i31.BookingRepositoryImpl(
          gh<_i11.NetworkInfo>(),
          gh<_i21.IBookingRemoteDataSource>(),
        ));
    gh.lazySingleton<_i32.ChatRepository>(() => _i33.ChatRepositoryImpl(
          gh<_i11.NetworkInfo>(),
          gh<_i22.IChatRemoteDataSource>(),
        ));
    gh.lazySingleton<_i34.CreateBookingUseCase>(
        () => _i34.CreateBookingUseCase(gh<_i30.BookingRepository>()));
    gh.lazySingleton<_i35.FindRouteUseCase>(
        () => _i35.FindRouteUseCase(gh<_i24.MapRepository>()));
    gh.lazySingleton<_i36.GetAllMessagesUseCase>(
        () => _i36.GetAllMessagesUseCase(gh<_i32.ChatRepository>()));
    gh.lazySingleton<_i37.GetBookingPriceUseCase>(
        () => _i37.GetBookingPriceUseCase(gh<_i30.BookingRepository>()));
    gh.lazySingleton<_i38.GetDriverInfoUseCase>(
        () => _i38.GetDriverInfoUseCase(gh<_i30.BookingRepository>()));
    gh.lazySingleton<_i39.GetPlaceDetailUseCase>(
        () => _i39.GetPlaceDetailUseCase(gh<_i24.MapRepository>()));
    gh.lazySingleton<_i40.LoginUseCase>(
        () => _i40.LoginUseCase(gh<_i28.AccountRepository>()));
    gh.lazySingleton<_i41.RegisterCustomerUseCase>(
        () => _i41.RegisterCustomerUseCase(gh<_i28.AccountRepository>()));
    gh.factory<_i42.BookingBloc>(() => _i42.BookingBloc(
          gh<_i13.SocketBloc>(),
          gh<_i27.SearchAddressFromTextUseCase>(),
          gh<_i26.SearchAddressFromLatLngUseCase>(),
          gh<_i39.GetPlaceDetailUseCase>(),
          gh<_i35.FindRouteUseCase>(),
          gh<_i37.GetBookingPriceUseCase>(),
          gh<_i34.CreateBookingUseCase>(),
          gh<_i38.GetDriverInfoUseCase>(),
        ));
    gh.factory<_i43.ChatCubit>(() => _i43.ChatCubit(
          gh<_i13.SocketBloc>(),
          gh<_i36.GetAllMessagesUseCase>(),
        ));
    gh.factory<_i44.LoginBloc>(() => _i44.LoginBloc(
          gh<_i40.LoginUseCase>(),
          gh<_i41.RegisterCustomerUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i45.RegisterModule {}
