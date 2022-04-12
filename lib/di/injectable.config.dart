// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../features/auth/data/data_source/local/auth_local_service.dart'
    as _i11;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i10;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i13;
import '../features/auth/domain/repository/auth_repository.dart' as _i12;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i20;
import '../features/auth/domain/use_case/login_use_case.dart' as _i21;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i22;
import '../features/auth/domain/use_case/register_use_case.dart' as _i27;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i28;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i15;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i4;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i14;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i3;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i16;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i17;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i18;
import '../features/cart/domain/use_cases/get_cart.dart' as _i19;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i7;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i24;
import '../features/orders/domain/repository/order_repository.dart' as _i23;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i29;
import '../features/products/data/repository/products_repo_impl.dart' as _i31;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i26;
import '../features/products/data/service/remote/rest_api.dart' as _i8;
import '../features/products/domain/repository/product_repo.dart' as _i30;
import '../features/products/domain/service/product_service.dart' as _i25;
import '../features/products/domain/use_cases/get_products.dart' as _i32;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i33;
import 'module/dio.dart' as _i34;
import 'module/logger.dart' as _i35;
import 'module/shared_preferences.dart'
    as _i36; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final myLoggerInject = _$MyLoggerInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.CartRemoteService>(() => _i4.CartRemoteServiceImpl());
  gh.factory<_i5.Dio>(() => myDioInject.dio);
  gh.factory<_i6.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i7.OrdersApiService>(_i7.OrdersApiService(get<_i5.Dio>()));
  gh.factory<_i8.RestApiImpl>(() => _i8.RestApiImpl(get<_i5.Dio>()));
  await gh.factoryAsync<_i9.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i10.AuthApiService>(_i10.AuthApiService(get<_i5.Dio>()));
  gh.singleton<_i11.AuthLocalService>(
      _i11.AuthLocalServiceImpl(get<_i9.SharedPreferences>()));
  gh.factory<_i12.AuthRepository>(() => _i13.AuthRepoImpl(
      get<_i10.AuthApiService>(), get<_i11.AuthLocalService>()));
  gh.factory<_i14.CartRepository>(() =>
      _i15.CartRepositoryImpl(get<_i3.CartRemoteService>(), get<_i6.Logger>()));
  gh.factory<_i16.CartRestApiImpl>(() => _i16.CartRestApiImpl(get<_i5.Dio>()));
  gh.factory<_i17.ConfirmOrder>(
      () => _i17.ConfirmOrder(get<_i14.CartRepository>()));
  gh.factory<_i18.EditCart>(() => _i18.EditCart(get<_i14.CartRepository>()));
  gh.factory<_i19.GetCart>(() => _i19.GetCart(get<_i14.CartRepository>()));
  gh.factory<_i20.GetTokenUseCase>(
      () => _i20.GetTokenUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i21.LoginUseCase>(
      () => _i21.LoginUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i22.LogoutUseCase>(
      () => _i22.LogoutUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i23.OrdersRepository>(() => _i24.OrdersRepoImpl(
      get<_i7.OrdersApiService>(), get<_i11.AuthLocalService>()));
  gh.factory<_i25.ProductService>(
      () => _i26.ProductServiceImpl(get<_i8.RestApiImpl>()));
  gh.factory<_i27.RegisterUseCase>(
      () => _i27.RegisterUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i28.AuthCubit>(() => _i28.AuthCubit(
      get<_i21.LoginUseCase>(),
      get<_i22.LogoutUseCase>(),
      get<_i27.RegisterUseCase>(),
      get<_i20.GetTokenUseCase>()));
  gh.factory<_i29.GetOrderUseCase>(
      () => _i29.GetOrderUseCase(get<_i23.OrdersRepository>()));
  gh.factory<_i30.ProductRepo>(
      () => _i31.ProductsRepoImpl(get<_i25.ProductService>()));
  gh.factory<_i32.GetProducts>(() => _i32.GetProducts(get<_i30.ProductRepo>()));
  gh.factory<_i33.ProductsCubit>(
      () => _i33.ProductsCubit(get<_i32.GetProducts>()));
  return get;
}

class _$MyDioInject extends _i34.MyDioInject {}

class _$MyLoggerInject extends _i35.MyLoggerInject {}

class _$InjectionModule extends _i36.InjectionModule {}
