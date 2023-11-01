// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_app_client/core/inject/register_module.dart' as _i24;
import 'package:go_app_client/core/network/network_info.dart' as _i10;
import 'package:go_app_client/data/api/account_api_service.dart' as _i12;
import 'package:go_app_client/data/api/map_api_service.dart' as _i7;
import 'package:go_app_client/data/datasources/account/account_remote_datasource.dart'
    as _i13;
import 'package:go_app_client/data/datasources/map/map_remote_datasource.dart'
    as _i14;
import 'package:go_app_client/data/mappers/account_model_mapper.dart' as _i3;
import 'package:go_app_client/data/mappers/map_autocomplete_mapper.dart' as _i8;
import 'package:go_app_client/data/mappers/map_reverse_mapper.dart' as _i9;
import 'package:go_app_client/data/repositories/acccount_repository_impl.dart'
    as _i20;
import 'package:go_app_client/data/repositories/map_repository_impl.dart'
    as _i16;
import 'package:go_app_client/domain/repositories/account_repository.dart'
    as _i19;
import 'package:go_app_client/domain/repositories/map_repository.dart' as _i15;
import 'package:go_app_client/domain/usecases/account/login_usecase.dart'
    as _i22;
import 'package:go_app_client/domain/usecases/map/search_address_from_latlng_usecase.dart'
    as _i17;
import 'package:go_app_client/domain/usecases/map/search_address_from_text_usecase.dart'
    as _i18;
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart'
    as _i21;
import 'package:go_app_client/presentation/bloc/home/home_bloc.dart' as _i5;
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart' as _i23;
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
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio());
    gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc());
    gh.lazySingleton<_i6.InternetConnectionChecker>(
        () => registerModule.connectionChecker);
    gh.lazySingleton<_i7.MapApiService>(
        () => registerModule.mapApiService(gh<_i4.Dio>()));
    gh.factory<_i8.MapAutoCompleteMapper>(() => _i8.MapAutoCompleteMapper());
    gh.factory<_i9.MapReverseMapper>(() => _i9.MapReverseMapper());
    gh.lazySingleton<_i10.NetworkInfo>(
        () => _i10.NetworkInfo(gh<_i6.InternetConnectionChecker>()));
    await gh.factoryAsync<_i11.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i12.AccountApiService>(
        () => registerModule.accountApiService(gh<_i4.Dio>()));
    gh.lazySingleton<_i13.IAccountRemoteDataSource>(
        () => _i13.AccountRemoteDateSource(
              gh<_i12.AccountApiService>(),
              gh<_i3.AccountModelMapper>(),
            ));
    gh.lazySingleton<_i14.IMapRemoteDataSource>(() => _i14.MapRemoteDataSource(
          gh<_i8.MapAutoCompleteMapper>(),
          gh<_i7.MapApiService>(),
          gh<_i9.MapReverseMapper>(),
        ));
    gh.lazySingleton<_i15.MapRepository>(() => _i16.MapRepositoryImpl(
          gh<_i10.NetworkInfo>(),
          gh<_i14.IMapRemoteDataSource>(),
        ));
    gh.lazySingleton<_i17.SearchAddressFromLatLngUseCase>(
        () => _i17.SearchAddressFromLatLngUseCase(gh<_i15.MapRepository>()));
    gh.lazySingleton<_i18.SearchAddressFromTextUseCase>(
        () => _i18.SearchAddressFromTextUseCase(gh<_i15.MapRepository>()));
    gh.lazySingleton<_i19.AccountRepository>(
        () => _i20.AccountRepositoryImpl(gh<_i13.IAccountRemoteDataSource>()));
    gh.factory<_i21.BookingBloc>(() => _i21.BookingBloc(
          gh<_i18.SearchAddressFromTextUseCase>(),
          gh<_i17.SearchAddressFromLatLngUseCase>(),
        ));
    gh.lazySingleton<_i22.LoginUseCase>(
        () => _i22.LoginUseCase(gh<_i19.AccountRepository>()));
    gh.factory<_i23.LoginBloc>(() => _i23.LoginBloc(gh<_i22.LoginUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i24.RegisterModule {}
