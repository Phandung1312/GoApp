// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_app_client/core/inject/register_module.dart' as _i15;
import 'package:go_app_client/data/api/account_api_service.dart' as _i9;
import 'package:go_app_client/data/datasources/account/account_remote_datasource.dart'
    as _i10;
import 'package:go_app_client/data/mappers/account_model_mapper.dart' as _i3;
import 'package:go_app_client/data/repositories/acccount_repository_impl.dart'
    as _i12;
import 'package:go_app_client/domain/repositories/account_repository.dart'
    as _i11;
import 'package:go_app_client/domain/usecases/account/login_usecase.dart'
    as _i13;
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart'
    as _i4;
import 'package:go_app_client/presentation/bloc/home/home_bloc.dart' as _i6;
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart' as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

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
    gh.factory<_i4.BookingBloc>(() => _i4.BookingBloc());
    gh.lazySingleton<_i5.Dio>(() => registerModule.dio());
    gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc());
    gh.lazySingleton<_i7.InternetConnectionChecker>(
        () => registerModule.connectionChecker);
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i9.AccountApiService>(
        () => registerModule.accountApiService(gh<_i5.Dio>()));
    gh.lazySingleton<_i10.IAccountRemoteDataSource>(
        () => _i10.AccountRemoteDateSource(
              gh<_i9.AccountApiService>(),
              gh<_i3.AccountModelMapper>(),
            ));
    gh.lazySingleton<_i11.AccountRepository>(
        () => _i12.AccountRepositoryImpl(gh<_i10.IAccountRemoteDataSource>()));
    gh.lazySingleton<_i13.LoginUseCase>(
        () => _i13.LoginUseCase(gh<_i11.AccountRepository>()));
    gh.factory<_i14.LoginBloc>(() => _i14.LoginBloc(gh<_i13.LoginUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}