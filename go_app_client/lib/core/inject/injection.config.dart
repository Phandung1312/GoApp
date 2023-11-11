// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_app_client/core/inject/register_module.dart' as _i29;
import 'package:go_app_client/core/network/network_info.dart' as _i11;
import 'package:go_app_client/data/api/account_api_service.dart' as _i14;
import 'package:go_app_client/data/api/map_api_service.dart' as _i8;
import 'package:go_app_client/data/datasources/account/account_remote_datasource.dart'
    as _i15;
import 'package:go_app_client/data/datasources/map/map_remote_datasource.dart'
    as _i16;
import 'package:go_app_client/data/mappers/account_model_mapper.dart' as _i3;
import 'package:go_app_client/data/mappers/instruction_model_mapper.dart'
    as _i6;
import 'package:go_app_client/data/mappers/map_autocomplete_mapper.dart' as _i9;
import 'package:go_app_client/data/mappers/map_reverse_mapper.dart' as _i10;
import 'package:go_app_client/data/mappers/map_routing_model_mapper.dart'
    as _i19;
import 'package:go_app_client/data/mappers/path_model_mapper.dart' as _i12;
import 'package:go_app_client/data/repositories/acccount_repository_impl.dart'
    as _i23;
import 'package:go_app_client/data/repositories/map_repository_impl.dart'
    as _i18;
import 'package:go_app_client/domain/repositories/account_repository.dart'
    as _i22;
import 'package:go_app_client/domain/repositories/map_repository.dart' as _i17;
import 'package:go_app_client/domain/usecases/account/login_usecase.dart'
    as _i26;
import 'package:go_app_client/domain/usecases/map/find_route_usecase.dart'
    as _i24;
import 'package:go_app_client/domain/usecases/map/get_place_detail_usecase.dart'
    as _i25;
import 'package:go_app_client/domain/usecases/map/search_address_from_latlng_usecase.dart'
    as _i20;
import 'package:go_app_client/domain/usecases/map/search_address_from_text_usecase.dart'
    as _i21;
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart'
    as _i27;
import 'package:go_app_client/presentation/bloc/home/home_bloc.dart' as _i5;
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart' as _i28;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

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
    gh.factory<_i6.InstructionModelMapper>(() => _i6.InstructionModelMapper());
    gh.lazySingleton<_i7.InternetConnectionChecker>(
        () => registerModule.connectionChecker);
    gh.lazySingleton<_i8.MapApiService>(
        () => registerModule.mapApiService(gh<_i4.Dio>()));
    gh.factory<_i9.MapAutoCompleteMapper>(() => _i9.MapAutoCompleteMapper());
    gh.factory<_i10.MapReverseMapper>(() => _i10.MapReverseMapper());
    gh.lazySingleton<_i11.NetworkInfo>(
        () => _i11.NetworkInfo(gh<_i7.InternetConnectionChecker>()));
    gh.factory<_i12.PathModelMapper>(
        () => _i12.PathModelMapper(gh<_i6.InstructionModelMapper>()));
    await gh.factoryAsync<_i13.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i14.AccountApiService>(
        () => registerModule.accountApiService(gh<_i4.Dio>()));
    gh.lazySingleton<_i15.IAccountRemoteDataSource>(
        () => _i15.AccountRemoteDateSource(
              gh<_i14.AccountApiService>(),
              gh<_i3.AccountModelMapper>(),
            ));
    gh.lazySingleton<_i16.IMapRemoteDataSource>(() => _i16.MapRemoteDataSource(
          gh<_i9.MapAutoCompleteMapper>(),
          gh<_i8.MapApiService>(),
          gh<_i10.MapReverseMapper>(),
        ));
    gh.lazySingleton<_i17.MapRepository>(() => _i18.MapRepositoryImpl(
          gh<_i11.NetworkInfo>(),
          gh<_i16.IMapRemoteDataSource>(),
        ));
    gh.factory<_i19.MapRoutingModelMapper>(
        () => _i19.MapRoutingModelMapper(gh<_i12.PathModelMapper>()));
    gh.lazySingleton<_i20.SearchAddressFromLatLngUseCase>(
        () => _i20.SearchAddressFromLatLngUseCase(gh<_i17.MapRepository>()));
    gh.lazySingleton<_i21.SearchAddressFromTextUseCase>(
        () => _i21.SearchAddressFromTextUseCase(gh<_i17.MapRepository>()));
    gh.lazySingleton<_i22.AccountRepository>(
        () => _i23.AccountRepositoryImpl(gh<_i15.IAccountRemoteDataSource>()));
    gh.lazySingleton<_i24.FindRouteUseCase>(
        () => _i24.FindRouteUseCase(gh<_i17.MapRepository>()));
    gh.lazySingleton<_i25.GetPlaceDetailUseCase>(
        () => _i25.GetPlaceDetailUseCase(gh<_i17.MapRepository>()));
    gh.lazySingleton<_i26.LoginUseCase>(
        () => _i26.LoginUseCase(gh<_i22.AccountRepository>()));
    gh.factory<_i27.BookingBloc>(() => _i27.BookingBloc(
          gh<_i21.SearchAddressFromTextUseCase>(),
          gh<_i20.SearchAddressFromLatLngUseCase>(),
          gh<_i25.GetPlaceDetailUseCase>(),
          gh<_i24.FindRouteUseCase>(),
        ));
    gh.factory<_i28.LoginBloc>(() => _i28.LoginBloc(gh<_i26.LoginUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i29.RegisterModule {}
