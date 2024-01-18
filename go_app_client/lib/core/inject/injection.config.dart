// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_app_client/core/inject/register_module.dart' as _i56;
import 'package:go_app_client/core/network/network_info.dart' as _i10;
import 'package:go_app_client/data/api/account_api_service.dart' as _i14;
import 'package:go_app_client/data/api/booking_api_service.dart' as _i15;
import 'package:go_app_client/data/api/chat_api_service.dart' as _i16;
import 'package:go_app_client/data/api/map_api_service.dart' as _i7;
import 'package:go_app_client/data/datasources/account/account_remote_datasource.dart'
    as _i18;
import 'package:go_app_client/data/datasources/booking/booking_remote_datasource.dart'
    as _i19;
import 'package:go_app_client/data/datasources/chat/chat_remote_datasource.dart'
    as _i20;
import 'package:go_app_client/data/datasources/map/map_remote_datasource.dart'
    as _i21;
import 'package:go_app_client/data/mappers/account_model_mapper.dart' as _i3;
import 'package:go_app_client/data/mappers/instruction_model_mapper.dart'
    as _i5;
import 'package:go_app_client/data/mappers/map_autocomplete_mapper.dart' as _i8;
import 'package:go_app_client/data/mappers/map_reverse_mapper.dart' as _i9;
import 'package:go_app_client/data/repositories/acccount_repository_impl.dart'
    as _i27;
import 'package:go_app_client/data/repositories/boooking_repository_impl.dart'
    as _i29;
import 'package:go_app_client/data/repositories/chat_repository_impl.dart'
    as _i32;
import 'package:go_app_client/data/repositories/map_repository_impl.dart'
    as _i23;
import 'package:go_app_client/domain/repositories/account_repository.dart'
    as _i26;
import 'package:go_app_client/domain/repositories/booking_repository.dart'
    as _i28;
import 'package:go_app_client/domain/repositories/chat_repository.dart' as _i31;
import 'package:go_app_client/domain/repositories/map_repository.dart' as _i22;
import 'package:go_app_client/domain/usecases/account/get_account_usecase.dart'
    as _i36;
import 'package:go_app_client/domain/usecases/account/login_usecase.dart'
    as _i48;
import 'package:go_app_client/domain/usecases/account/logout_usecase.dart'
    as _i47;
import 'package:go_app_client/domain/usecases/account/register_customer_usecase.dart'
    as _i49;
import 'package:go_app_client/domain/usecases/account/update_account_usecase.dart'
    as _i51;
import 'package:go_app_client/domain/usecases/booking/cancel_booking_usecase.dart'
    as _i30;
import 'package:go_app_client/domain/usecases/booking/create_booking_usecase.dart'
    as _i33;
import 'package:go_app_client/domain/usecases/booking/get_active_booking_usecase.dart'
    as _i37;
import 'package:go_app_client/domain/usecases/booking/get_all_messages_usecase.dart'
    as _i38;
import 'package:go_app_client/domain/usecases/booking/get_booking_price_usecase.dart'
    as _i39;
import 'package:go_app_client/domain/usecases/booking/get_driver_info_usecase.dart'
    as _i40;
import 'package:go_app_client/domain/usecases/history/create_review_usecase.dart'
    as _i34;
import 'package:go_app_client/domain/usecases/history/get_histories_usecase.dart'
    as _i41;
import 'package:go_app_client/domain/usecases/history/get_history_usecase.dart'
    as _i42;
import 'package:go_app_client/domain/usecases/map/find_route_usecase.dart'
    as _i35;
import 'package:go_app_client/domain/usecases/map/get_place_detail_usecase.dart'
    as _i43;
import 'package:go_app_client/domain/usecases/map/search_address_from_latlng_usecase.dart'
    as _i24;
import 'package:go_app_client/domain/usecases/map/search_address_from_text_usecase.dart'
    as _i25;
import 'package:go_app_client/helpers/socket_io.dart' as _i13;
import 'package:go_app_client/presentation/bloc/account/account_bloc.dart'
    as _i52;
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart'
    as _i53;
import 'package:go_app_client/presentation/bloc/chat/chat/chat_cubit.dart'
    as _i54;
import 'package:go_app_client/presentation/bloc/driver_location/driver_location_cubit.dart'
    as _i17;
import 'package:go_app_client/presentation/bloc/history/history_bloc.dart'
    as _i44;
import 'package:go_app_client/presentation/bloc/history_detail/history_detail_bloc.dart'
    as _i45;
import 'package:go_app_client/presentation/bloc/home/home_cubit.dart' as _i46;
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart' as _i55;
import 'package:go_app_client/presentation/bloc/review/review_cubit.dart'
    as _i50;
import 'package:go_app_client/presentation/bloc/socket/socket_bloc.dart'
    as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

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
    gh.factory<_i5.InstructionModelMapper>(() => _i5.InstructionModelMapper());
    gh.lazySingleton<_i6.InternetConnectionChecker>(
        () => registerModule.connectionChecker);
    gh.lazySingleton<_i7.MapApiService>(
        () => registerModule.mapApiService(gh<_i4.Dio>(instanceName: 'Map')));
    gh.factory<_i8.MapAutoCompleteMapper>(() => _i8.MapAutoCompleteMapper());
    gh.factory<_i9.MapReverseMapper>(() => _i9.MapReverseMapper());
    gh.lazySingleton<_i10.NetworkInfo>(
        () => _i10.NetworkInfo(gh<_i6.InternetConnectionChecker>()));
    await gh.factoryAsync<_i11.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i12.SocketBloc>(() => _i12.SocketBloc());
    gh.lazySingleton<_i13.SocketIO>(() => _i13.SocketIO());
    gh.lazySingleton<_i14.AccountApiService>(() =>
        registerModule.accountApiService(gh<_i4.Dio>(instanceName: 'App')));
    gh.lazySingleton<_i15.BookingApiService>(() =>
        registerModule.bookingApiService(gh<_i4.Dio>(instanceName: 'App')));
    gh.lazySingleton<_i16.ChatApiService>(
        () => registerModule.chatApiService(gh<_i4.Dio>(instanceName: 'App')));
    gh.lazySingleton<_i17.DriverLocationCubit>(
        () => _i17.DriverLocationCubit(gh<_i12.SocketBloc>()));
    gh.lazySingleton<_i18.IAccountRemoteDataSource>(
        () => _i18.AccountRemoteDateSource(gh<_i14.AccountApiService>()));
    gh.lazySingleton<_i19.IBookingRemoteDataSource>(
        () => _i19.BookingRemoteDataSource(gh<_i15.BookingApiService>()));
    gh.lazySingleton<_i20.IChatRemoteDataSource>(
        () => _i20.ChatRemoteDataSource(gh<_i16.ChatApiService>()));
    gh.lazySingleton<_i21.IMapRemoteDataSource>(() => _i21.MapRemoteDataSource(
          gh<_i8.MapAutoCompleteMapper>(),
          gh<_i7.MapApiService>(),
          gh<_i9.MapReverseMapper>(),
        ));
    gh.lazySingleton<_i22.MapRepository>(() => _i23.MapRepositoryImpl(
          gh<_i10.NetworkInfo>(),
          gh<_i21.IMapRemoteDataSource>(),
        ));
    gh.lazySingleton<_i24.SearchAddressFromLatLngUseCase>(
        () => _i24.SearchAddressFromLatLngUseCase(gh<_i22.MapRepository>()));
    gh.lazySingleton<_i25.SearchAddressFromTextUseCase>(
        () => _i25.SearchAddressFromTextUseCase(gh<_i22.MapRepository>()));
    gh.lazySingleton<_i26.AccountRepository>(() => _i27.AccountRepositoryImpl(
          gh<_i10.NetworkInfo>(),
          gh<_i18.IAccountRemoteDataSource>(),
          gh<_i11.SharedPreferences>(),
        ));
    gh.lazySingleton<_i28.BookingRepository>(() => _i29.BookingRepositoryImpl(
          gh<_i10.NetworkInfo>(),
          gh<_i19.IBookingRemoteDataSource>(),
        ));
    gh.lazySingleton<_i30.CancelBookingUseCase>(
        () => _i30.CancelBookingUseCase(gh<_i28.BookingRepository>()));
    gh.lazySingleton<_i31.ChatRepository>(() => _i32.ChatRepositoryImpl(
          gh<_i10.NetworkInfo>(),
          gh<_i20.IChatRemoteDataSource>(),
        ));
    gh.lazySingleton<_i33.CreateBookingUseCase>(
        () => _i33.CreateBookingUseCase(gh<_i28.BookingRepository>()));
    gh.lazySingleton<_i34.CreateReviewUseCase>(
        () => _i34.CreateReviewUseCase(gh<_i28.BookingRepository>()));
    gh.lazySingleton<_i35.FindRouteUseCase>(
        () => _i35.FindRouteUseCase(gh<_i22.MapRepository>()));
    gh.lazySingleton<_i36.GetAccountUseCase>(
        () => _i36.GetAccountUseCase(gh<_i26.AccountRepository>()));
    gh.lazySingleton<_i37.GetActiveBookingUseCase>(
        () => _i37.GetActiveBookingUseCase(gh<_i28.BookingRepository>()));
    gh.lazySingleton<_i38.GetAllMessagesUseCase>(
        () => _i38.GetAllMessagesUseCase(gh<_i31.ChatRepository>()));
    gh.lazySingleton<_i39.GetBookingPriceUseCase>(
        () => _i39.GetBookingPriceUseCase(gh<_i28.BookingRepository>()));
    gh.lazySingleton<_i40.GetDriverInfoUseCase>(
        () => _i40.GetDriverInfoUseCase(gh<_i28.BookingRepository>()));
    gh.lazySingleton<_i41.GetHistoriesUseCase>(
        () => _i41.GetHistoriesUseCase(gh<_i28.BookingRepository>()));
    gh.lazySingleton<_i42.GetHistoryUseCase>(
        () => _i42.GetHistoryUseCase(gh<_i28.BookingRepository>()));
    gh.lazySingleton<_i43.GetPlaceDetailUseCase>(
        () => _i43.GetPlaceDetailUseCase(gh<_i22.MapRepository>()));
    gh.factory<_i44.HistoryBloc>(
        () => _i44.HistoryBloc(gh<_i41.GetHistoriesUseCase>()));
    gh.factory<_i45.HistoryDetailBloc>(() => _i45.HistoryDetailBloc(
          gh<_i42.GetHistoryUseCase>(),
          gh<_i40.GetDriverInfoUseCase>(),
        ));
    gh.factory<_i46.HomeCubit>(() => _i46.HomeCubit(
          gh<_i12.SocketBloc>(),
          gh<_i37.GetActiveBookingUseCase>(),
        ));
    gh.lazySingleton<_i47.LogOutUseCase>(
        () => _i47.LogOutUseCase(gh<_i26.AccountRepository>()));
    gh.lazySingleton<_i48.LoginUseCase>(
        () => _i48.LoginUseCase(gh<_i26.AccountRepository>()));
    gh.lazySingleton<_i49.RegisterCustomerUseCase>(
        () => _i49.RegisterCustomerUseCase(gh<_i26.AccountRepository>()));
    gh.factory<_i50.ReviewCubit>(
        () => _i50.ReviewCubit(gh<_i34.CreateReviewUseCase>()));
    gh.lazySingleton<_i51.UpdateAccountUseCase>(
        () => _i51.UpdateAccountUseCase(gh<_i26.AccountRepository>()));
    gh.factory<_i52.AccountBloc>(() => _i52.AccountBloc(
          gh<_i36.GetAccountUseCase>(),
          gh<_i47.LogOutUseCase>(),
          gh<_i51.UpdateAccountUseCase>(),
        ));
    gh.factory<_i53.BookingBloc>(() => _i53.BookingBloc(
          gh<_i12.SocketBloc>(),
          gh<_i17.DriverLocationCubit>(),
          gh<_i25.SearchAddressFromTextUseCase>(),
          gh<_i24.SearchAddressFromLatLngUseCase>(),
          gh<_i43.GetPlaceDetailUseCase>(),
          gh<_i35.FindRouteUseCase>(),
          gh<_i39.GetBookingPriceUseCase>(),
          gh<_i33.CreateBookingUseCase>(),
          gh<_i40.GetDriverInfoUseCase>(),
          gh<_i30.CancelBookingUseCase>(),
        ));
    gh.factory<_i54.ChatCubit>(() => _i54.ChatCubit(
          gh<_i12.SocketBloc>(),
          gh<_i38.GetAllMessagesUseCase>(),
        ));
    gh.factory<_i55.LoginBloc>(() => _i55.LoginBloc(
          gh<_i48.LoginUseCase>(),
          gh<_i49.RegisterCustomerUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i56.RegisterModule {}
