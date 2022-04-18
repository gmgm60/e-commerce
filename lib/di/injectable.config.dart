// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i36;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i57;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i56;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i62;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i63;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i64;
import '../features/auth/data/data_source/local/auth_local_service.dart'
    as _i18;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i17;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i20;
import '../features/auth/domain/repository/auth_repository.dart' as _i19;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i35;
import '../features/auth/domain/use_case/login_use_case.dart' as _i37;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i38;
import '../features/auth/domain/use_case/register_use_case.dart' as _i47;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i48;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i49;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i24;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i22;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i23;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i21;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i25;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i29;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i30;
import '../features/cart/domain/use_cases/get_cart.dart' as _i33;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i50;
import '../features/categories/data/data_source/remote/categories_api_service.dart'
    as _i26;
import '../features/categories/data/repository/category_repo_impl.dart' as _i28;
import '../features/categories/domain/repository/category_repository.dart'
    as _i27;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i34;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i51;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i32;
import '../features/favorites/data/service/remote/favorite_remote_service_impl.dart'
    as _i5;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i31;
import '../features/favorites/domain/data/service/favorite_remote_service.dart'
    as _i4;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i7;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i9;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i8;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i6;
import '../features/merchants/data/data_source/remote/merchants_api_service.dart'
    as _i11;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i40;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i39;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i52;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i58;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i12;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i42;
import '../features/orders/domain/repository/order_repository.dart' as _i41;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i53;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i59;
import '../features/products/data/repository/products_repo_impl.dart' as _i44;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i14;
import '../features/products/domain/repository/product_repo.dart' as _i43;
import '../features/products/domain/service/product_service.dart' as _i13;
import '../features/products/domain/use_cases/get_products.dart' as _i54;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i60;
import '../features/profile/data/data_source/remote/profile_user_service.dart'
    as _i15;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i46;
import '../features/profile/domain/repository/profile_repository.dart' as _i45;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i55;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i61;
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
  gh.factory<_i4.FavoriteRemoteService>(
      () => _i5.FavoriteRemoteServiceImpl(get<_i3.Dio>()));
  gh.factory<_i6.FavoritesCubit>(() => _i6.FavoritesCubit(
      get<_i7.AddToFavorite>(),
      get<_i8.RemoveFromFavorite>(),
      get<_i9.GetFavorites>()));
  gh.factory<_i10.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i11.MerchantsApiService>(
      _i11.MerchantsApiService(get<_i3.Dio>()));
  gh.singleton<_i12.OrdersApiService>(_i12.OrdersApiService(get<_i3.Dio>()));
  gh.factory<_i13.ProductService>(
      () => _i14.ProductServiceImpl(get<_i3.Dio>()));
  gh.singleton<_i15.ProfileUserService>(
      _i15.ProfileUserService(get<_i3.Dio>()));
  await gh.factoryAsync<_i16.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i17.AuthApiService>(_i17.AuthApiService(get<_i3.Dio>()));
  gh.singleton<_i18.AuthLocalService>(
      _i18.AuthLocalServiceImpl(get<_i16.SharedPreferences>()));
  gh.factory<_i19.AuthRepository>(() => _i20.AuthRepoImpl(
      get<_i17.AuthApiService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i21.CartRemoteService>(
      () => _i22.CartRemoteServiceImpl(get<_i3.Dio>()));
  gh.factory<_i23.CartRepository>(() => _i24.CartRepositoryImpl(
      get<_i21.CartRemoteService>(),
      get<_i10.Logger>(),
      get<_i18.AuthLocalService>()));
  gh.factory<_i25.CartRestApiImpl>(() => _i25.CartRestApiImpl(get<_i3.Dio>()));
  gh.singleton<_i26.CategoriesApiService>(
      _i26.CategoriesApiService(get<_i3.Dio>()));
  gh.factory<_i27.CategoryRepository>(() => _i28.CategoryRepoImpl(
      get<_i26.CategoriesApiService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i29.ConfirmOrder>(
      () => _i29.ConfirmOrder(get<_i23.CartRepository>()));
  gh.factory<_i30.EditCart>(() => _i30.EditCart(get<_i23.CartRepository>()));
  gh.factory<_i31.FavoriteRepository>(() => _i32.FavoriteRepositoryImpl(
      get<_i4.FavoriteRemoteService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i33.GetCart>(() => _i33.GetCart(get<_i23.CartRepository>()));
  gh.factory<_i34.GetCategoriesUseCase>(
      () => _i34.GetCategoriesUseCase(get<_i27.CategoryRepository>()));
  gh.factory<_i35.GetTokenUseCase>(
      () => _i35.GetTokenUseCase(get<_i19.AuthRepository>()));
  gh.singleton<_i36.LocalizationService>(
      _i36.LocaleServiceImpl(get<_i16.SharedPreferences>()));
  gh.factory<_i37.LoginUseCase>(
      () => _i37.LoginUseCase(get<_i19.AuthRepository>()));
  gh.factory<_i38.LogoutUseCase>(
      () => _i38.LogoutUseCase(get<_i19.AuthRepository>()));
  gh.factory<_i39.MerchantsRepository>(() => _i40.MerchantsRepoImpl(
      get<_i11.MerchantsApiService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i41.OrdersRepository>(() => _i42.OrdersRepoImpl(
      get<_i12.OrdersApiService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i43.ProductRepo>(() => _i44.ProductsRepoImpl(
      get<_i13.ProductService>(), get<_i18.AuthLocalService>()));
  gh.singleton<_i45.ProfileRepository>(_i46.ProfileRepoImpl(
      get<_i18.AuthLocalService>(), get<_i15.ProfileUserService>()));
  gh.factory<_i47.RegisterUseCase>(
      () => _i47.RegisterUseCase(get<_i19.AuthRepository>()));
  gh.factory<_i48.ResetPassUseCase>(
      () => _i48.ResetPassUseCase(get<_i19.AuthRepository>()));
  gh.factory<_i49.AuthCubit>(() => _i49.AuthCubit(
      get<_i37.LoginUseCase>(),
      get<_i38.LogoutUseCase>(),
      get<_i47.RegisterUseCase>(),
      get<_i35.GetTokenUseCase>(),
      get<_i48.ResetPassUseCase>()));
  gh.factory<_i50.CartCubit>(() => _i50.CartCubit(
      get<_i33.GetCart>(), get<_i30.EditCart>(), get<_i10.Logger>()));
  gh.factory<_i51.CategoryCubit>(
      () => _i51.CategoryCubit(get<_i34.GetCategoriesUseCase>()));
  gh.factory<_i52.GetMerchantsUseCase>(
      () => _i52.GetMerchantsUseCase(get<_i39.MerchantsRepository>()));
  gh.factory<_i53.GetOrderUseCase>(
      () => _i53.GetOrderUseCase(get<_i41.OrdersRepository>()));
  gh.factory<_i54.GetProducts>(() => _i54.GetProducts(get<_i43.ProductRepo>()));
  gh.factory<_i55.GetUserUseCase>(
      () => _i55.GetUserUseCase(get<_i45.ProfileRepository>()));
  gh.factory<_i56.LocalizationRepository>(
      () => _i57.LocalizationRepoImpl(get<_i36.LocalizationService>()));
  gh.factory<_i58.MerchantsCubit>(
      () => _i58.MerchantsCubit(get<_i52.GetMerchantsUseCase>()));
  gh.factory<_i59.OrdersCubit>(
      () => _i59.OrdersCubit(get<_i53.GetOrderUseCase>()));
  gh.factory<_i60.ProductsCubit>(
      () => _i60.ProductsCubit(get<_i54.GetProducts>()));
  gh.factory<_i61.ProfileCubit>(
      () => _i61.ProfileCubit(get<_i55.GetUserUseCase>()));
  gh.factory<_i62.ChangeLocaleUseCase>(
      () => _i62.ChangeLocaleUseCase(get<_i56.LocalizationRepository>()));
  gh.factory<_i63.GetLocaleUseCase>(
      () => _i63.GetLocaleUseCase(get<_i56.LocalizationRepository>()));
  gh.factory<_i64.LocaleCubit>(() => _i64.LocaleCubit(
      get<_i63.GetLocaleUseCase>(), get<_i62.ChangeLocaleUseCase>()));
  return get;
}

class _$MyDioInject extends _i65.MyDioInject {}

class _$MyLoggerInject extends _i66.MyLoggerInject {}

class _$InjectionModule extends _i67.InjectionModule {}
