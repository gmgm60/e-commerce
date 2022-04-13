// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../features/auth/data/data_source/local/auth_local_service.dart' as _i9;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i8;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i11;
import '../features/auth/domain/repository/auth_repository.dart' as _i10;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i12;
import '../features/auth/domain/use_case/login_use_case.dart' as _i13;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i14;
import '../features/auth/domain/use_case/register_use_case.dart' as _i21;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i22;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i23;
import '../features/merchants/data/data_source/remote/merchants_api_service.dart'
    as _i4;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i16;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i15;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i24;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i26;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i5;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i18;
import '../features/orders/domain/repository/order_repository.dart' as _i17;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i25;
import '../features/products/data/repository/products_repo_impl.dart' as _i28;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i20;
import '../features/products/data/service/remote/rest_api.dart' as _i6;
import '../features/products/domain/repository/product_repo.dart' as _i27;
import '../features/products/domain/service/product_service.dart' as _i19;
import '../features/products/domain/use_cases/get_products.dart' as _i29;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i30;
import 'module/dio.dart' as _i31;
import 'module/shared_preferences.dart'
    as _i32; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.singleton<_i4.MerchantsApiService>(
      _i4.MerchantsApiService(get<_i3.Dio>()));
  gh.singleton<_i5.OrdersApiService>(_i5.OrdersApiService(get<_i3.Dio>()));
  gh.factory<_i6.RestApiImpl>(() => _i6.RestApiImpl(get<_i3.Dio>()));
  await gh.factoryAsync<_i7.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i8.AuthApiService>(_i8.AuthApiService(get<_i3.Dio>()));
  gh.singleton<_i9.AuthLocalService>(
      _i9.AuthLocalServiceImpl(get<_i7.SharedPreferences>()));
  gh.factory<_i10.AuthRepository>(() => _i11.AuthRepoImpl(
      get<_i8.AuthApiService>(), get<_i9.AuthLocalService>()));
  gh.factory<_i12.GetTokenUseCase>(
      () => _i12.GetTokenUseCase(get<_i10.AuthRepository>()));
  gh.factory<_i13.LoginUseCase>(
      () => _i13.LoginUseCase(get<_i10.AuthRepository>()));
  gh.factory<_i14.LogoutUseCase>(
      () => _i14.LogoutUseCase(get<_i10.AuthRepository>()));
  gh.factory<_i15.MerchantsRepository>(() => _i16.MerchantsRepoImpl(
      get<_i4.MerchantsApiService>(), get<_i9.AuthLocalService>()));
  gh.factory<_i17.OrdersRepository>(() => _i18.OrdersRepoImpl(
      get<_i5.OrdersApiService>(), get<_i9.AuthLocalService>()));
  gh.factory<_i19.ProductService>(
      () => _i20.ProductServiceImpl(get<_i6.RestApiImpl>()));
  gh.factory<_i21.RegisterUseCase>(
      () => _i21.RegisterUseCase(get<_i10.AuthRepository>()));
  gh.factory<_i22.ResetPassUseCase>(
      () => _i22.ResetPassUseCase(get<_i10.AuthRepository>()));
  gh.factory<_i23.AuthCubit>(() => _i23.AuthCubit(
      get<_i13.LoginUseCase>(),
      get<_i14.LogoutUseCase>(),
      get<_i21.RegisterUseCase>(),
      get<_i12.GetTokenUseCase>(),
      get<_i22.ResetPassUseCase>()));
  gh.factory<_i24.GetMerchantsUseCase>(
      () => _i24.GetMerchantsUseCase(get<_i15.MerchantsRepository>()));
  gh.factory<_i25.GetOrderUseCase>(
      () => _i25.GetOrderUseCase(get<_i17.OrdersRepository>()));
  gh.factory<_i26.MerchantsCubit>(
      () => _i26.MerchantsCubit(get<_i24.GetMerchantsUseCase>()));
  gh.factory<_i27.ProductRepo>(
      () => _i28.ProductsRepoImpl(get<_i19.ProductService>()));
  gh.factory<_i29.GetProducts>(() => _i29.GetProducts(get<_i27.ProductRepo>()));
  gh.factory<_i30.ProductsCubit>(
      () => _i30.ProductsCubit(get<_i29.GetProducts>()));
  return get;
}

class _$MyDioInject extends _i31.MyDioInject {}

class _$InjectionModule extends _i32.InjectionModule {}
