// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_app_driver/core/inject/register_module.dart' as _i43;
import 'package:go_app_driver/core/network/network_info.dart' as _i8;
import 'package:go_app_driver/data/api/account_api_service.dart' as _i11;
import 'package:go_app_driver/data/api/booking_api_service.dart' as _i12;
import 'package:go_app_driver/data/api/chat_api_service.dart' as _i13;
import 'package:go_app_driver/data/api/map_api_service.dart' as _i7;
import 'package:go_app_driver/data/datasources/account/account_remote_datasource.dart'
    as _i14;
import 'package:go_app_driver/data/datasources/booking/booking_remote_datasource.dart'
    as _i15;
import 'package:go_app_driver/data/datasources/chat/chat_remote_datasource.dart'
    as _i16;
import 'package:go_app_driver/data/datasources/map/map_remote_datasource.dart'
    as _i17;
import 'package:go_app_driver/data/mappers/account_model_mapper.dart' as _i3;
import 'package:go_app_driver/data/repositories/acccount_repository_impl.dart'
    as _i22;
import 'package:go_app_driver/data/repositories/booking_repository_impl.dart'
    as _i24;
import 'package:go_app_driver/data/repositories/chat_repository_impl.dart'
    as _i28;
import 'package:go_app_driver/data/repositories/map_repository_impl.dart'
    as _i19;
import 'package:go_app_driver/domain/repositories/account_repository.dart'
    as _i21;
import 'package:go_app_driver/domain/repositories/booking_repository.dart'
    as _i23;
import 'package:go_app_driver/domain/repositories/chat_repository.dart' as _i27;
import 'package:go_app_driver/domain/repositories/map_repository.dart' as _i18;
import 'package:go_app_driver/domain/usecases/account/get_account_usecase.dart'
    as _i29;
import 'package:go_app_driver/domain/usecases/account/login_usecase.dart'
    as _i36;
import 'package:go_app_driver/domain/usecases/account/logout_usecase.dart'
    as _i35;
import 'package:go_app_driver/domain/usecases/account/register_driver_usecase.dart'
    as _i37;
import 'package:go_app_driver/domain/usecases/booking/cancel_booking_usecase.dart'
    as _i25;
import 'package:go_app_driver/domain/usecases/booking/change_driver_status_usecase.dart'
    as _i26;
import 'package:go_app_driver/domain/usecases/booking/get_active_booking_usecase.dart'
    as _i30;
import 'package:go_app_driver/domain/usecases/booking/get_all_messages_usecase.dart'
    as _i31;
import 'package:go_app_driver/domain/usecases/booking/get_booking_usecase.dart'
    as _i32;
import 'package:go_app_driver/domain/usecases/booking/get_customer_info_usecase.dart'
    as _i33;
import 'package:go_app_driver/domain/usecases/map/search_address_from_latlng_usecase.dart'
    as _i20;
import 'package:go_app_driver/presentation/bloc/account/account_cubit.dart'
    as _i38;
import 'package:go_app_driver/presentation/bloc/booking/booking_bloc.dart'
    as _i39;
import 'package:go_app_driver/presentation/bloc/chat/chat_cubit.dart' as _i40;
import 'package:go_app_driver/presentation/bloc/history/history_bloc.dart'
    as _i5;
import 'package:go_app_driver/presentation/bloc/home/home_cubit.dart' as _i34;
import 'package:go_app_driver/presentation/bloc/login/login_bloc.dart' as _i41;
import 'package:go_app_driver/presentation/bloc/register/register_bloc.dart'
    as _i42;
import 'package:go_app_driver/presentation/bloc/socket/socket_bloc.dart'
    as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

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
    gh.lazySingleton<_i6.InternetConnectionChecker>(
        () => registerModule.connectionChecker);
    gh.lazySingleton<_i7.MapApiService>(
        () => registerModule.mapApiService(gh<_i4.Dio>(instanceName: 'Map')));
    gh.lazySingleton<_i8.NetworkInfo>(
        () => _i8.NetworkInfo(gh<_i6.InternetConnectionChecker>()));
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i10.SocketBloc>(() => _i10.SocketBloc());
    gh.lazySingleton<_i11.AccountApiService>(() =>
        registerModule.accountApiService(gh<_i4.Dio>(instanceName: 'App')));
    gh.lazySingleton<_i12.BookingApiService>(() =>
        registerModule.bookingApiService(gh<_i4.Dio>(instanceName: 'App')));
    gh.lazySingleton<_i13.ChatApiService>(
        () => registerModule.chatApiService(gh<_i4.Dio>(instanceName: 'App')));
    gh.lazySingleton<_i14.IAccountRemoteDataSource>(
        () => _i14.AccountRemoteDateSource(gh<_i11.AccountApiService>()));
    gh.lazySingleton<_i15.IBookingRemoteDataSource>(
        () => _i15.BookingRemoteDataSource(gh<_i12.BookingApiService>()));
    gh.lazySingleton<_i16.IChatRemoteDataSource>(
        () => _i16.ChatRemoteDataSource(gh<_i13.ChatApiService>()));
    gh.lazySingleton<_i17.IMapRemoteDataSource>(
        () => _i17.MapRemoteDataSource(gh<_i7.MapApiService>()));
    gh.lazySingleton<_i18.MapRepository>(() => _i19.MapRepositoryImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i17.IMapRemoteDataSource>(),
        ));
    gh.lazySingleton<_i20.SearchAddressFromLatLngUseCase>(
        () => _i20.SearchAddressFromLatLngUseCase(gh<_i18.MapRepository>()));
    gh.lazySingleton<_i21.AccountRepository>(() => _i22.AccountRepositoryImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i14.IAccountRemoteDataSource>(),
          gh<_i9.SharedPreferences>(),
        ));
    gh.lazySingleton<_i23.BookingRepository>(() => _i24.BookingRepositoryImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i15.IBookingRemoteDataSource>(),
        ));
    gh.lazySingleton<_i25.CancelBookingUseCase>(
        () => _i25.CancelBookingUseCase(gh<_i23.BookingRepository>()));
    gh.lazySingleton<_i26.ChangeDriverStatusUseCase>(
        () => _i26.ChangeDriverStatusUseCase(gh<_i23.BookingRepository>()));
    gh.lazySingleton<_i27.ChatRepository>(() => _i28.ChatRepositoryImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i16.IChatRemoteDataSource>(),
        ));
    gh.lazySingleton<_i29.GetAccountUseCase>(
        () => _i29.GetAccountUseCase(gh<_i21.AccountRepository>()));
    gh.lazySingleton<_i30.GetActiveBookingUseCase>(
        () => _i30.GetActiveBookingUseCase(gh<_i23.BookingRepository>()));
    gh.lazySingleton<_i31.GetAllMessagesUseCase>(
        () => _i31.GetAllMessagesUseCase(gh<_i27.ChatRepository>()));
    gh.lazySingleton<_i32.GetBookingUseCase>(
        () => _i32.GetBookingUseCase(gh<_i23.BookingRepository>()));
    gh.lazySingleton<_i33.GetCustomerInfoUseCase>(
        () => _i33.GetCustomerInfoUseCase(gh<_i23.BookingRepository>()));
    gh.factory<_i34.HomeCubit>(() => _i34.HomeCubit(
          gh<_i10.SocketBloc>(),
          gh<_i29.GetAccountUseCase>(),
          gh<_i26.ChangeDriverStatusUseCase>(),
          gh<_i30.GetActiveBookingUseCase>(),
        ));
    gh.lazySingleton<_i35.LogOutUseCase>(
        () => _i35.LogOutUseCase(gh<_i21.AccountRepository>()));
    gh.lazySingleton<_i36.LoginUseCase>(
        () => _i36.LoginUseCase(gh<_i21.AccountRepository>()));
    gh.lazySingleton<_i37.RegisterDriverUseCase>(
        () => _i37.RegisterDriverUseCase(gh<_i21.AccountRepository>()));
    gh.factory<_i38.AccountCubit>(() => _i38.AccountCubit(
          gh<_i29.GetAccountUseCase>(),
          gh<_i35.LogOutUseCase>(),
        ));
    gh.factory<_i39.BookingBloc>(() => _i39.BookingBloc(
          socketBloc: gh<_i10.SocketBloc>(),
          getBookingUseCase: gh<_i32.GetBookingUseCase>(),
          searchAddressFromLatLngUseCase:
              gh<_i20.SearchAddressFromLatLngUseCase>(),
          getCustomerInfoUseCase: gh<_i33.GetCustomerInfoUseCase>(),
          cancelBookingUseCase: gh<_i25.CancelBookingUseCase>(),
        ));
    gh.factory<_i40.ChatCubit>(() => _i40.ChatCubit(
          gh<_i10.SocketBloc>(),
          gh<_i31.GetAllMessagesUseCase>(),
        ));
    gh.factory<_i41.LoginBloc>(() => _i41.LoginBloc(gh<_i36.LoginUseCase>()));
    gh.factory<_i42.RegisterBloc>(
        () => _i42.RegisterBloc(gh<_i37.RegisterDriverUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i43.RegisterModule {}
