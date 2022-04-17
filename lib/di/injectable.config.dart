// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i21;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i47;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i46;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i53;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i54;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i56;
import '../features/auth/data/data_source/local/auth_local_service.dart'
    as _i11;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i10;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i13;
import '../features/auth/domain/repository/auth_repository.dart' as _i12;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i20;
import '../features/auth/domain/use_case/login_use_case.dart' as _i22;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i23;
import '../features/auth/domain/use_case/register_use_case.dart' as _i32;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i33;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i34;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i38;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i36;
import '../features/cart/data/service/remote/cart_retrofit.dart' as _i15;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i37;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i35;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i14;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i40;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i41;
import '../features/cart/domain/use_cases/get_cart.dart' as _i42;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i52;
import '../features/categories/data/data_source/remote/categories_api_service.dart'
    as _i16;
import '../features/categories/data/repository/category_repo_impl.dart' as _i18;
import '../features/categories/domain/repository/category_repository.dart'
    as _i17;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i19;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i39;
import '../features/merchants/data/data_source/remote/merchants_api_service.dart'
    as _i5;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i25;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i24;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i43;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i48;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i6;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i27;
import '../features/orders/domain/repository/order_repository.dart' as _i26;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i44;
import '../features/products/data/repository/products_repo_impl.dart' as _i50;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i29;
import '../features/products/data/service/remote/rest_api.dart' as _i8;
import '../features/products/domain/repository/product_repo.dart' as _i49;
import '../features/products/domain/service/product_service.dart' as _i28;
import '../features/products/domain/use_cases/get_products.dart' as _i55;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i57;
import '../features/profile/data/data_source/remote/profile_user_service.dart'
    as _i7;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i31;
import '../features/profile/domain/repository/profile_repository.dart' as _i30;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i45;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i51;
import 'module/dio.dart' as _i58;
import 'module/logger.dart' as _i59;
import 'module/shared_preferences.dart'
    as _i60; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final myLoggerInject = _$MyLoggerInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.factory<_i4.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i5.MerchantsApiService>(
      _i5.MerchantsApiService(get<_i3.Dio>()));
  gh.singleton<_i6.OrdersApiService>(_i6.OrdersApiService(get<_i3.Dio>()));
  gh.singleton<_i7.ProfileUserService>(_i7.ProfileUserService(get<_i3.Dio>()));
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
  gh.singleton<_i21.LocalizationService>(
      _i21.LocaleServiceImpl(get<_i9.SharedPreferences>()));
  gh.factory<_i22.LoginUseCase>(
      () => _i22.LoginUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i23.LogoutUseCase>(
      () => _i23.LogoutUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i24.MerchantsRepository>(() => _i25.MerchantsRepoImpl(
      get<_i5.MerchantsApiService>(), get<_i11.AuthLocalService>()));
  gh.factory<_i26.OrdersRepository>(() => _i27.OrdersRepoImpl(
      get<_i6.OrdersApiService>(), get<_i11.AuthLocalService>()));
  gh.factory<_i28.ProductService>(
      () => _i29.ProductServiceImpl(get<_i8.RestApiImpl>()));
  gh.singleton<_i30.ProfileRepository>(_i31.ProfileRepoImpl(
      get<_i11.AuthLocalService>(), get<_i7.ProfileUserService>()));
  gh.factory<_i32.RegisterUseCase>(
      () => _i32.RegisterUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i33.ResetPassUseCase>(
      () => _i33.ResetPassUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i34.AuthCubit>(() => _i34.AuthCubit(
      get<_i22.LoginUseCase>(),
      get<_i23.LogoutUseCase>(),
      get<_i32.RegisterUseCase>(),
      get<_i20.GetTokenUseCase>(),
      get<_i33.ResetPassUseCase>()));
  gh.factory<_i35.CartRemoteService>(
      () => _i36.CartRemoteServiceImpl(get<_i15.CartRetrofit>()));
  gh.factory<_i37.CartRepository>(() => _i38.CartRepositoryImpl(
      get<_i35.CartRemoteService>(), get<_i4.Logger>()));
  gh.factory<_i39.CategoryCubit>(
      () => _i39.CategoryCubit(get<_i19.GetCategoriesUseCase>()));
  gh.factory<_i40.ConfirmOrder>(
      () => _i40.ConfirmOrder(get<_i37.CartRepository>()));
  gh.factory<_i41.EditCart>(() => _i41.EditCart(get<_i37.CartRepository>()));
  gh.factory<_i42.GetCart>(() => _i42.GetCart(get<_i37.CartRepository>()));
  gh.factory<_i43.GetMerchantsUseCase>(
      () => _i43.GetMerchantsUseCase(get<_i24.MerchantsRepository>()));
  gh.factory<_i44.GetOrderUseCase>(
      () => _i44.GetOrderUseCase(get<_i26.OrdersRepository>()));
  gh.factory<_i45.GetUserUseCase>(
      () => _i45.GetUserUseCase(get<_i30.ProfileRepository>()));
  gh.factory<_i46.LocalizationRepository>(
      () => _i47.LocalizationRepoImpl(get<_i21.LocalizationService>()));
  gh.factory<_i48.MerchantsCubit>(
      () => _i48.MerchantsCubit(get<_i43.GetMerchantsUseCase>()));
  gh.factory<_i49.ProductRepo>(
      () => _i50.ProductsRepoImpl(get<_i28.ProductService>()));
  gh.factory<_i51.ProfileCubit>(
      () => _i51.ProfileCubit(get<_i45.GetUserUseCase>()));
  gh.factory<_i52.CartCubit>(() => _i52.CartCubit(
      get<_i42.GetCart>(), get<_i41.EditCart>(), get<_i4.Logger>()));
  gh.factory<_i53.ChangeLocaleUseCase>(
      () => _i53.ChangeLocaleUseCase(get<_i46.LocalizationRepository>()));
  gh.factory<_i54.GetLocaleUseCase>(
      () => _i54.GetLocaleUseCase(get<_i46.LocalizationRepository>()));
  gh.factory<_i55.GetProducts>(() => _i55.GetProducts(get<_i49.ProductRepo>()));
  gh.factory<_i56.LocaleCubit>(() => _i56.LocaleCubit(
      get<_i54.GetLocaleUseCase>(), get<_i53.ChangeLocaleUseCase>()));
  gh.factory<_i57.ProductsCubit>(
      () => _i57.ProductsCubit(get<_i55.GetProducts>()));
  return get;
}

class _$MyDioInject extends _i58.MyDioInject {}

class _$MyLoggerInject extends _i59.MyLoggerInject {}

class _$InjectionModule extends _i60.InjectionModule {}
