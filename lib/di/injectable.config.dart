// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../features/auth/data/data_source/local/auth_local_service.dart' as _i8;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i7;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i10;
import '../features/auth/domain/repository/auth_repository.dart' as _i9;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i11;
import '../features/auth/domain/use_case/login_use_case.dart' as _i12;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i13;
import '../features/auth/domain/use_case/register_use_case.dart' as _i18;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i19;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i20;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i4;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i15;
import '../features/orders/domain/repository/order_repository.dart' as _i14;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i21;
import '../features/products/data/repository/products_repo_impl.dart' as _i23;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i17;
import '../features/products/data/service/remote/rest_api.dart' as _i5;
import '../features/products/domain/repository/product_repo.dart' as _i22;
import '../features/products/domain/service/product_service.dart' as _i16;
import '../features/products/domain/use_cases/get_products.dart' as _i24;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i25;
import 'module/dio.dart' as _i26;
import 'module/shared_preferences.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.singleton<_i4.OrdersApiService>(_i4.OrdersApiService(get<_i3.Dio>()));
  gh.factory<_i5.RestApiImpl>(() => _i5.RestApiImpl(get<_i3.Dio>()));
  await gh.factoryAsync<_i6.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i7.AuthApiService>(_i7.AuthApiService(get<_i3.Dio>()));
  gh.singleton<_i8.AuthLocalService>(
      _i8.AuthLocalServiceImpl(get<_i6.SharedPreferences>()));
  gh.factory<_i9.AuthRepository>(() => _i10.AuthRepoImpl(
      get<_i7.AuthApiService>(), get<_i8.AuthLocalService>()));
  gh.factory<_i11.GetTokenUseCase>(
      () => _i11.GetTokenUseCase(get<_i9.AuthRepository>()));
  gh.factory<_i12.LoginUseCase>(
      () => _i12.LoginUseCase(get<_i9.AuthRepository>()));
  gh.factory<_i13.LogoutUseCase>(
      () => _i13.LogoutUseCase(get<_i9.AuthRepository>()));
  gh.factory<_i14.OrdersRepository>(() => _i15.OrdersRepoImpl(
      get<_i4.OrdersApiService>(), get<_i8.AuthLocalService>()));
  gh.factory<_i16.ProductService>(
      () => _i17.ProductServiceImpl(get<_i5.RestApiImpl>()));
  gh.factory<_i18.RegisterUseCase>(
      () => _i18.RegisterUseCase(get<_i9.AuthRepository>()));
  gh.factory<_i19.ResetPassUseCase>(
      () => _i19.ResetPassUseCase(get<_i9.AuthRepository>()));
  gh.factory<_i20.AuthCubit>(() => _i20.AuthCubit(
      get<_i12.LoginUseCase>(),
      get<_i13.LogoutUseCase>(),
      get<_i18.RegisterUseCase>(),
      get<_i11.GetTokenUseCase>(),
      get<_i19.ResetPassUseCase>()));
  gh.factory<_i21.GetOrderUseCase>(
      () => _i21.GetOrderUseCase(get<_i14.OrdersRepository>()));
  gh.factory<_i22.ProductRepo>(
      () => _i23.ProductsRepoImpl(get<_i16.ProductService>()));
  gh.factory<_i24.GetProducts>(() => _i24.GetProducts(get<_i22.ProductRepo>()));
  gh.factory<_i25.ProductsCubit>(
      () => _i25.ProductsCubit(get<_i24.GetProducts>()));
  return get;
}

class _$MyDioInject extends _i26.MyDioInject {}

class _$InjectionModule extends _i27.InjectionModule {}
