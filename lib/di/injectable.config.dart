// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../core/presentation/bloc/locale_cubit/locale_cubit.dart' as _i4;
import '../features/auth/data/data_source/local/auth_local_service.dart'
    as _i11;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i10;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i13;
import '../features/auth/domain/repository/auth_repository.dart' as _i12;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i20;
import '../features/auth/domain/use_case/login_use_case.dart' as _i21;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i22;
import '../features/auth/domain/use_case/register_use_case.dart' as _i29;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i30;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i31;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i35;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i33;
import '../features/cart/data/service/remote/cart_retrofit.dart' as _i15;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i34;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i32;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i14;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i37;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i38;
import '../features/cart/domain/use_cases/get_cart.dart' as _i39;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i45;
import '../features/categories/data/data_source/remote/categories_api_service.dart'
    as _i16;
import '../features/categories/data/repository/category_repo_impl.dart' as _i18;
import '../features/categories/domain/repository/category_repository.dart'
    as _i17;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i19;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i36;
import '../features/merchants/data/data_source/remote/merchants_api_service.dart'
    as _i6;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i24;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i23;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i40;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i42;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i7;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i26;
import '../features/orders/domain/repository/order_repository.dart' as _i25;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i41;
import '../features/products/data/repository/products_repo_impl.dart' as _i44;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i28;
import '../features/products/data/service/remote/rest_api.dart' as _i8;
import '../features/products/domain/repository/product_repo.dart' as _i43;
import '../features/products/domain/service/product_service.dart' as _i27;
import '../features/products/domain/use_cases/get_products.dart' as _i46;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i47;
import 'module/dio.dart' as _i48;
import 'module/logger.dart' as _i49;
import 'module/shared_preferences.dart'
    as _i50; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final myLoggerInject = _$MyLoggerInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.factory<_i4.LocaleCubit>(() => _i4.LocaleCubit());
  gh.factory<_i5.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i6.MerchantsApiService>(
      _i6.MerchantsApiService(get<_i3.Dio>()));
  gh.singleton<_i7.OrdersApiService>(_i7.OrdersApiService(get<_i3.Dio>()));
  gh.factory<_i8.RestApiImpl>(() => _i8.RestApiImpl(get<_i3.Dio>()));
  await gh.factoryAsync<_i9.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i10.AuthApiService>(_i10.AuthApiService(get<_i3.Dio>()));
  gh.singleton<_i11.AuthLocalService>(
      _i11.AuthLocalServiceImpl(get<_i9.SharedPreferences>()));
  gh.factory<_i12.AuthRepository>(() => _i13.AuthRepoImpl(
      get<_i10.AuthApiService>(), get<_i11.AuthLocalService>()));
  gh.factory<_i14.CartRestApiImpl>(() => _i14.CartRestApiImpl(get<_i3.Dio>()));
  gh.factory<_i15.CartRetrofit>(() => _i15.CartRetrofit(get<_i3.Dio>()));
  gh.singleton<_i16.CategoriesApiService>(
      _i16.CategoriesApiService(get<_i3.Dio>()));
  gh.factory<_i17.CategoryRepository>(() => _i18.CategoryRepoImpl(
      get<_i16.CategoriesApiService>(), get<_i11.AuthLocalService>()));
  gh.factory<_i19.GetCategoriesUseCase>(
      () => _i19.GetCategoriesUseCase(get<_i17.CategoryRepository>()));
  gh.factory<_i20.GetTokenUseCase>(
      () => _i20.GetTokenUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i21.LoginUseCase>(
      () => _i21.LoginUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i22.LogoutUseCase>(
      () => _i22.LogoutUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i23.MerchantsRepository>(() => _i24.MerchantsRepoImpl(
      get<_i6.MerchantsApiService>(), get<_i11.AuthLocalService>()));
  gh.factory<_i25.OrdersRepository>(() => _i26.OrdersRepoImpl(
      get<_i7.OrdersApiService>(), get<_i11.AuthLocalService>()));
  gh.factory<_i27.ProductService>(
      () => _i28.ProductServiceImpl(get<_i8.RestApiImpl>()));
  gh.factory<_i29.RegisterUseCase>(
      () => _i29.RegisterUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i30.ResetPassUseCase>(
      () => _i30.ResetPassUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i31.AuthCubit>(() => _i31.AuthCubit(
      get<_i21.LoginUseCase>(),
      get<_i22.LogoutUseCase>(),
      get<_i29.RegisterUseCase>(),
      get<_i20.GetTokenUseCase>(),
      get<_i30.ResetPassUseCase>()));
  gh.factory<_i32.CartRemoteService>(
      () => _i33.CartRemoteServiceImpl(get<_i15.CartRetrofit>()));
  gh.factory<_i34.CartRepository>(() => _i35.CartRepositoryImpl(
      get<_i32.CartRemoteService>(), get<_i5.Logger>()));
  gh.factory<_i36.CategoryCubit>(
      () => _i36.CategoryCubit(get<_i19.GetCategoriesUseCase>()));
  gh.factory<_i37.ConfirmOrder>(
      () => _i37.ConfirmOrder(get<_i34.CartRepository>()));
  gh.factory<_i38.EditCart>(() => _i38.EditCart(get<_i34.CartRepository>()));
  gh.factory<_i39.GetCart>(() => _i39.GetCart(get<_i34.CartRepository>()));
  gh.factory<_i40.GetMerchantsUseCase>(
      () => _i40.GetMerchantsUseCase(get<_i23.MerchantsRepository>()));
  gh.factory<_i41.GetOrderUseCase>(
      () => _i41.GetOrderUseCase(get<_i25.OrdersRepository>()));
  gh.factory<_i42.MerchantsCubit>(
      () => _i42.MerchantsCubit(get<_i40.GetMerchantsUseCase>()));
  gh.factory<_i43.ProductRepo>(
      () => _i44.ProductsRepoImpl(get<_i27.ProductService>()));
  gh.factory<_i45.CartCubit>(() => _i45.CartCubit(
      get<_i39.GetCart>(), get<_i38.EditCart>(), get<_i5.Logger>()));
  gh.factory<_i46.GetProducts>(() => _i46.GetProducts(get<_i43.ProductRepo>()));
  gh.factory<_i47.ProductsCubit>(
      () => _i47.ProductsCubit(get<_i46.GetProducts>()));
  return get;
}

class _$MyDioInject extends _i48.MyDioInject {}

class _$MyLoggerInject extends _i49.MyLoggerInject {}

class _$InjectionModule extends _i50.InjectionModule {}
