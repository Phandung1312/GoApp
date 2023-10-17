// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_app_driver/core/inject/register_module.dart' as _i12;
import 'package:go_app_driver/data/api/account_api_service.dart' as _i6;
import 'package:go_app_driver/data/datasources/account/account_remote_datasource.dart'
    as _i7;
import 'package:go_app_driver/data/mappers/account_model_mapper.dart' as _i3;
import 'package:go_app_driver/data/repositories/acccount_repository_impl.dart'
    as _i9;
import 'package:go_app_driver/domain/repositories/account_repository.dart'
    as _i8;
import 'package:go_app_driver/domain/usecases/account/login_usecase.dart'
    as _i10;
import 'package:go_app_driver/presentation/bloc/login/login_bloc.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AccountModelMapper>(() => _i3.AccountModelMapper());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i5.InternetConnectionChecker>(
        () => registerModule.connectionChecker);
    gh.lazySingleton<_i6.AccountApiService>(
        () => registerModule.accountApiService(gh<_i4.Dio>()));
    gh.lazySingleton<_i7.IAccountRemoteDataSource>(
        () => _i7.AccountRemoteDateSource(
              gh<_i6.AccountApiService>(),
              gh<_i3.AccountModelMapper>(),
            ));
    gh.lazySingleton<_i8.AccountRepository>(
        () => _i9.AccountRepositoryImpl(gh<_i7.IAccountRemoteDataSource>()));
    gh.lazySingleton<_i10.LoginUseCase>(
        () => _i10.LoginUseCase(gh<_i8.AccountRepository>()));
    gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc(gh<_i10.LoginUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
