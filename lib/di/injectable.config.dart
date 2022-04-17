// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i22;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i49;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i48;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i55;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i56;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i57;
import '../features/auth/data/data_source/local/auth_local_service.dart'
    as _i12;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i11;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i14;
import '../features/auth/domain/repository/auth_repository.dart' as _i13;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i21;
import '../features/auth/domain/use_case/login_use_case.dart' as _i23;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i24;
import '../features/auth/domain/use_case/register_use_case.dart' as _i33;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i34;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i35;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i39;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i37;
import '../features/cart/data/service/remote/cart_retrofit.dart' as _i16;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i38;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i36;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i15;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i41;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i42;
import '../features/cart/domain/use_cases/get_cart.dart' as _i43;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i54;
import '../features/categories/data/data_source/remote/categories_api_service.dart'
    as _i17;
import '../features/categories/data/repository/category_repo_impl.dart' as _i19;
import '../features/categories/domain/repository/category_repository.dart'
    as _i18;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i20;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i40;
import '../features/merchants/data/data_source/remote/merchants_api_service.dart'
    as _i5;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i26;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i25;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i44;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i50;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i6;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i28;
import '../features/orders/domain/repository/order_repository.dart' as _i27;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i45;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i51;
import '../features/products/data/repository/products_repo_impl.dart' as _i30;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i8;
import '../features/products/domain/repository/product_repo.dart' as _i29;
import '../features/products/domain/service/product_service.dart' as _i7;
import '../features/products/domain/use_cases/get_products.dart' as _i46;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i52;
import '../features/profile/data/data_source/remote/profile_user_service.dart'
    as _i9;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i32;
import '../features/profile/domain/repository/profile_repository.dart' as _i31;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i47;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i53;
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
  gh.factory<_i7.ProductService>(() => _i8.ProductServiceImpl(get<_i3.Dio>()));
  gh.singleton<_i9.ProfileUserService>(_i9.ProfileUserService(get<_i3.Dio>()));
  await gh.factoryAsync<_i10.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i11.AuthApiService>(_i11.AuthApiService(get<_i3.Dio>()));
  gh.singleton<_i12.AuthLocalService>(
      _i12.AuthLocalServiceImpl(get<_i10.SharedPreferences>()));
  gh.factory<_i13.AuthRepository>(() => _i14.AuthRepoImpl(
      get<_i11.AuthApiService>(), get<_i12.AuthLocalService>()));
  gh.factory<_i15.CartRestApiImpl>(() => _i15.CartRestApiImpl(get<_i3.Dio>()));
  gh.factory<_i16.CartRetrofit>(() => _i16.CartRetrofit(get<_i3.Dio>()));
  gh.singleton<_i17.CategoriesApiService>(
      _i17.CategoriesApiService(get<_i3.Dio>()));
  gh.factory<_i18.CategoryRepository>(() => _i19.CategoryRepoImpl(
      get<_i17.CategoriesApiService>(), get<_i12.AuthLocalService>()));
  gh.factory<_i20.GetCategoriesUseCase>(
      () => _i20.GetCategoriesUseCase(get<_i18.CategoryRepository>()));
  gh.factory<_i21.GetTokenUseCase>(
      () => _i21.GetTokenUseCase(get<_i13.AuthRepository>()));
  gh.singleton<_i22.LocalizationService>(
      _i22.LocaleServiceImpl(get<_i10.SharedPreferences>()));
  gh.factory<_i23.LoginUseCase>(
      () => _i23.LoginUseCase(get<_i13.AuthRepository>()));
  gh.factory<_i24.LogoutUseCase>(
      () => _i24.LogoutUseCase(get<_i13.AuthRepository>()));
  gh.factory<_i25.MerchantsRepository>(() => _i26.MerchantsRepoImpl(
      get<_i5.MerchantsApiService>(), get<_i12.AuthLocalService>()));
  gh.factory<_i27.OrdersRepository>(() => _i28.OrdersRepoImpl(
      get<_i6.OrdersApiService>(), get<_i12.AuthLocalService>()));
  gh.factory<_i29.ProductRepo>(
      () => _i30.ProductsRepoImpl(get<_i7.ProductService>()));
  gh.singleton<_i31.ProfileRepository>(_i32.ProfileRepoImpl(
      get<_i12.AuthLocalService>(), get<_i9.ProfileUserService>()));
  gh.factory<_i33.RegisterUseCase>(
      () => _i33.RegisterUseCase(get<_i13.AuthRepository>()));
  gh.factory<_i34.ResetPassUseCase>(
      () => _i34.ResetPassUseCase(get<_i13.AuthRepository>()));
  gh.factory<_i35.AuthCubit>(() => _i35.AuthCubit(
      get<_i23.LoginUseCase>(),
      get<_i24.LogoutUseCase>(),
      get<_i33.RegisterUseCase>(),
      get<_i21.GetTokenUseCase>(),
      get<_i34.ResetPassUseCase>()));
  gh.factory<_i36.CartRemoteService>(
      () => _i37.CartRemoteServiceImpl(get<_i16.CartRetrofit>()));
  gh.factory<_i38.CartRepository>(() => _i39.CartRepositoryImpl(
      get<_i36.CartRemoteService>(), get<_i4.Logger>()));
  gh.factory<_i40.CategoryCubit>(
      () => _i40.CategoryCubit(get<_i20.GetCategoriesUseCase>()));
  gh.factory<_i41.ConfirmOrder>(
      () => _i41.ConfirmOrder(get<_i38.CartRepository>()));
  gh.factory<_i42.EditCart>(() => _i42.EditCart(get<_i38.CartRepository>()));
  gh.factory<_i43.GetCart>(() => _i43.GetCart(get<_i38.CartRepository>()));
  gh.factory<_i44.GetMerchantsUseCase>(
      () => _i44.GetMerchantsUseCase(get<_i25.MerchantsRepository>()));
  gh.factory<_i45.GetOrderUseCase>(
      () => _i45.GetOrderUseCase(get<_i27.OrdersRepository>()));
  gh.factory<_i46.GetProducts>(() => _i46.GetProducts(get<_i29.ProductRepo>()));
  gh.factory<_i47.GetUserUseCase>(
      () => _i47.GetUserUseCase(get<_i31.ProfileRepository>()));
  gh.factory<_i48.LocalizationRepository>(
      () => _i49.LocalizationRepoImpl(get<_i22.LocalizationService>()));
  gh.factory<_i50.MerchantsCubit>(
      () => _i50.MerchantsCubit(get<_i44.GetMerchantsUseCase>()));
  gh.factory<_i51.OrdersCubit>(
      () => _i51.OrdersCubit(get<_i45.GetOrderUseCase>()));
  gh.factory<_i52.ProductsCubit>(
      () => _i52.ProductsCubit(get<_i46.GetProducts>()));
  gh.factory<_i53.ProfileCubit>(
      () => _i53.ProfileCubit(get<_i47.GetUserUseCase>()));
  gh.factory<_i54.CartCubit>(() => _i54.CartCubit(
      get<_i43.GetCart>(), get<_i42.EditCart>(), get<_i4.Logger>()));
  gh.factory<_i55.ChangeLocaleUseCase>(
      () => _i55.ChangeLocaleUseCase(get<_i48.LocalizationRepository>()));
  gh.factory<_i56.GetLocaleUseCase>(
      () => _i56.GetLocaleUseCase(get<_i48.LocalizationRepository>()));
  gh.factory<_i57.LocaleCubit>(() => _i57.LocaleCubit(
      get<_i56.GetLocaleUseCase>(), get<_i55.ChangeLocaleUseCase>()));
  return get;
}

class _$MyDioInject extends _i58.MyDioInject {}

class _$MyLoggerInject extends _i59.MyLoggerInject {}

class _$InjectionModule extends _i60.InjectionModule {}
