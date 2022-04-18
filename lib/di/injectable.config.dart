// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i29;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i56;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i55;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i62;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i63;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i64;
import '../features/auth/data/data_source/local/auth_local_service_impl.dart'
    as _i17;
import '../features/auth/data/data_source/remote/auth_api_service_impl.dart'
    as _i15;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i19;
import '../features/auth/domain/data_source/local/auth_local_service.dart'
    as _i16;
import '../features/auth/domain/data_source/remote/auth_api_service.dart'
    as _i14;
import '../features/auth/domain/repository/auth_repository.dart' as _i18;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i28;
import '../features/auth/domain/use_case/login_use_case.dart' as _i30;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i31;
import '../features/auth/domain/use_case/register_use_case.dart' as _i40;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i41;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i42;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i46;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i44;
import '../features/cart/data/service/remote/cart_retrofit.dart' as _i21;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i45;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i43;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i20;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i48;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i49;
import '../features/cart/domain/use_cases/get_cart.dart' as _i50;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i61;
import '../features/categories/data/data_source/remote/categories_api_service_impl.dart'
    as _i23;
import '../features/categories/data/repository/category_repo_impl.dart' as _i25;
import '../features/categories/domain/data_source/remote/categories_api_service.dart'
    as _i22;
import '../features/categories/domain/repository/category_repository.dart'
    as _i24;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i26;
import '../features/categories/domain/use_case/get_products_by_cat_id_use_case.dart'
    as _i27;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i47;
import '../features/merchants/data/data_source/remote/merchants_api_service_impl.dart'
    as _i6;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i33;
import '../features/merchants/domain/data_source/remote/merchants_api_service.dart'
    as _i5;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i32;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i51;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i57;
import '../features/orders/data/data_source/remote/orders_api_service_impl.dart'
    as _i8;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i35;
import '../features/orders/domain/data_source/remote/orders_api_service.dart'
    as _i7;
import '../features/orders/domain/repository/order_repository.dart' as _i34;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i52;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i58;
import '../features/products/data/repository/products_repo_impl.dart' as _i37;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i10;
import '../features/products/domain/repository/product_repo.dart' as _i36;
import '../features/products/domain/service/product_service.dart' as _i9;
import '../features/products/domain/use_cases/get_products.dart' as _i53;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i59;
import '../features/profile/data/data_source/remote/profile_user_service_impl.dart'
    as _i12;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i39;
import '../features/profile/domain/data_source/remote/profile_user_service.dart'
    as _i11;
import '../features/profile/domain/repository/profile_repository.dart' as _i38;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i54;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i60;
import 'module/dio.dart' as _i65;
import 'module/logger.dart' as _i66;
import 'module/shared_preferences.dart'
    as _i67; // ignore_for_file: unnecessary_lambdas

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
      _i6.MerchantsApiServiceImpl(get<_i3.Dio>()));
  gh.singleton<_i7.OrdersApiService>(_i8.OrdersApiServiceImpl(get<_i3.Dio>()));
  gh.factory<_i9.ProductService>(() => _i10.ProductServiceImpl(get<_i3.Dio>()));
  gh.singleton<_i11.ProfileUserService>(
      _i12.ProfileUserServiceImpl(get<_i3.Dio>()));
  await gh.factoryAsync<_i13.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i14.AuthApiService>(_i15.AuthApiServiceImpl(get<_i3.Dio>()));
  gh.singleton<_i16.AuthLocalService>(
      _i17.AuthLocalServiceImpl(get<_i13.SharedPreferences>()));
  gh.factory<_i18.AuthRepository>(() => _i19.AuthRepoImpl(
      get<_i14.AuthApiService>(), get<_i16.AuthLocalService>()));
  gh.factory<_i20.CartRestApiImpl>(() => _i20.CartRestApiImpl(get<_i3.Dio>()));
  gh.factory<_i21.CartRetrofit>(() => _i21.CartRetrofit(get<_i3.Dio>()));
  gh.singleton<_i22.CategoriesApiService>(
      _i23.CategoriesApiServiceImpl(get<_i3.Dio>()));
  gh.factory<_i24.CategoryRepository>(() => _i25.CategoryRepoImpl(
      get<_i22.CategoriesApiService>(), get<_i16.AuthLocalService>()));
  gh.factory<_i26.GetCategoriesUseCase>(
      () => _i26.GetCategoriesUseCase(get<_i24.CategoryRepository>()));
  gh.factory<_i27.GetProductsByCatIdUseCase>(
      () => _i27.GetProductsByCatIdUseCase(get<_i24.CategoryRepository>()));
  gh.factory<_i28.GetTokenUseCase>(
      () => _i28.GetTokenUseCase(get<_i18.AuthRepository>()));
  gh.singleton<_i29.LocalizationService>(
      _i29.LocaleServiceImpl(get<_i13.SharedPreferences>()));
  gh.factory<_i30.LoginUseCase>(
      () => _i30.LoginUseCase(get<_i18.AuthRepository>()));
  gh.factory<_i31.LogoutUseCase>(
      () => _i31.LogoutUseCase(get<_i18.AuthRepository>()));
  gh.factory<_i32.MerchantsRepository>(() => _i33.MerchantsRepoImpl(
      get<_i5.MerchantsApiService>(), get<_i16.AuthLocalService>()));
  gh.factory<_i34.OrdersRepository>(() => _i35.OrdersRepoImpl(
      get<_i7.OrdersApiService>(), get<_i16.AuthLocalService>()));
  gh.factory<_i36.ProductRepo>(
      () => _i37.ProductsRepoImpl(get<_i9.ProductService>()));
  gh.singleton<_i38.ProfileRepository>(_i39.ProfileRepoImpl(
      get<_i16.AuthLocalService>(), get<_i11.ProfileUserService>()));
  gh.factory<_i40.RegisterUseCase>(
      () => _i40.RegisterUseCase(get<_i18.AuthRepository>()));
  gh.factory<_i41.ResetPassUseCase>(
      () => _i41.ResetPassUseCase(get<_i18.AuthRepository>()));
  gh.factory<_i42.AuthCubit>(() => _i42.AuthCubit(
      get<_i30.LoginUseCase>(),
      get<_i31.LogoutUseCase>(),
      get<_i40.RegisterUseCase>(),
      get<_i28.GetTokenUseCase>(),
      get<_i41.ResetPassUseCase>()));
  gh.factory<_i43.CartRemoteService>(
      () => _i44.CartRemoteServiceImpl(get<_i21.CartRetrofit>()));
  gh.factory<_i45.CartRepository>(() => _i46.CartRepositoryImpl(
      get<_i43.CartRemoteService>(), get<_i4.Logger>()));
  gh.factory<_i47.CategoryCubit>(() => _i47.CategoryCubit(
      get<_i26.GetCategoriesUseCase>(), get<_i27.GetProductsByCatIdUseCase>()));
  gh.factory<_i48.ConfirmOrder>(
      () => _i48.ConfirmOrder(get<_i45.CartRepository>()));
  gh.factory<_i49.EditCart>(() => _i49.EditCart(get<_i45.CartRepository>()));
  gh.factory<_i50.GetCart>(() => _i50.GetCart(get<_i45.CartRepository>()));
  gh.factory<_i51.GetMerchantsUseCase>(
      () => _i51.GetMerchantsUseCase(get<_i32.MerchantsRepository>()));
  gh.factory<_i52.GetOrderUseCase>(
      () => _i52.GetOrderUseCase(get<_i34.OrdersRepository>()));
  gh.factory<_i53.GetProducts>(() => _i53.GetProducts(get<_i36.ProductRepo>()));
  gh.factory<_i54.GetUserUseCase>(
      () => _i54.GetUserUseCase(get<_i38.ProfileRepository>()));
  gh.factory<_i55.LocalizationRepository>(
      () => _i56.LocalizationRepoImpl(get<_i29.LocalizationService>()));
  gh.factory<_i57.MerchantsCubit>(
      () => _i57.MerchantsCubit(get<_i51.GetMerchantsUseCase>()));
  gh.factory<_i58.OrdersCubit>(
      () => _i58.OrdersCubit(get<_i52.GetOrderUseCase>()));
  gh.factory<_i59.ProductsCubit>(
      () => _i59.ProductsCubit(get<_i53.GetProducts>()));
  gh.factory<_i60.ProfileCubit>(
      () => _i60.ProfileCubit(get<_i54.GetUserUseCase>()));
  gh.factory<_i61.CartCubit>(() => _i61.CartCubit(
      get<_i50.GetCart>(), get<_i49.EditCart>(), get<_i4.Logger>()));
  gh.factory<_i62.ChangeLocaleUseCase>(
      () => _i62.ChangeLocaleUseCase(get<_i55.LocalizationRepository>()));
  gh.factory<_i63.GetLocaleUseCase>(
      () => _i63.GetLocaleUseCase(get<_i55.LocalizationRepository>()));
  gh.factory<_i64.LocaleCubit>(() => _i64.LocaleCubit(
      get<_i63.GetLocaleUseCase>(), get<_i62.ChangeLocaleUseCase>()));
  return get;
}

class _$MyDioInject extends _i65.MyDioInject {}

class _$MyLoggerInject extends _i66.MyLoggerInject {}

class _$InjectionModule extends _i67.InjectionModule {}
