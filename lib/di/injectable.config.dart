// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i40;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i65;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i64;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i70;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i71;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i72;
import '../features/auth/data/data_source/local/auth_local_service_impl.dart'
    as _i19;
import '../features/auth/data/data_source/remote/auth_api_service_impl.dart'
    as _i17;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i21;
import '../features/auth/domain/data_source/local/auth_local_service.dart'
    as _i18;
import '../features/auth/domain/data_source/remote/auth_api_service.dart'
    as _i16;
import '../features/auth/domain/repository/auth_repository.dart' as _i20;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i39;
import '../features/auth/domain/use_case/login_use_case.dart' as _i41;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i42;
import '../features/auth/domain/use_case/register_use_case.dart' as _i51;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i53;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i56;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i25;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i23;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i24;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i22;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i26;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i31;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i32;
import '../features/cart/domain/use_cases/get_cart.dart' as _i35;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i57;
import '../features/categories/data/data_source/remote/categories_api_service_impl.dart'
    as _i28;
import '../features/categories/data/repository/category_repo_impl.dart' as _i30;
import '../features/categories/domain/data_source/remote/categories_api_service.dart'
    as _i27;
import '../features/categories/domain/repository/category_repository.dart'
    as _i29;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i36;
import '../features/categories/domain/use_case/get_products_by_cat_id_use_case.dart'
    as _i38;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i58;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i34;
import '../features/favorites/data/service/remote/favorite_remote_service_impl.dart'
    as _i5;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i33;
import '../features/favorites/domain/data/service/favorite_remote_service.dart'
    as _i4;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i55;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i37;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i52;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i59;
import '../features/merchants/data/data_source/remote/merchants_api_service_impl.dart'
    as _i8;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i44;
import '../features/merchants/domain/data_source/remote/merchants_api_service.dart'
    as _i7;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i43;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i60;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i66;
import '../features/orders/data/data_source/remote/orders_api_service_impl.dart'
    as _i10;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i46;
import '../features/orders/domain/data_source/remote/orders_api_service.dart'
    as _i9;
import '../features/orders/domain/repository/order_repository.dart' as _i45;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i61;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i67;
import '../features/products/data/repository/products_repo_impl.dart' as _i48;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i12;
import '../features/products/domain/repository/product_repo.dart' as _i47;
import '../features/products/domain/service/product_service.dart' as _i11;
import '../features/products/domain/use_cases/get_products.dart' as _i62;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i68;
import '../features/profile/data/data_source/remote/profile_user_service_impl.dart'
    as _i14;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i50;
import '../features/profile/domain/data_source/remote/profile_user_service.dart'
    as _i13;
import '../features/profile/domain/repository/profile_repository.dart' as _i49;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i63;
import '../features/profile/domain/use_case/update_user_use_case.dart' as _i54;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i69;
import 'module/dio.dart' as _i73;
import 'module/logger.dart' as _i74;
import 'module/shared_preferences.dart'
    as _i75; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i7.MerchantsApiService>(
      _i8.MerchantsApiServiceImpl(get<_i3.Dio>()));
  gh.singleton<_i9.OrdersApiService>(_i10.OrdersApiServiceImpl(get<_i3.Dio>()));
  gh.factory<_i11.ProductService>(
      () => _i12.ProductServiceImpl(get<_i3.Dio>()));
  gh.singleton<_i13.ProfileUserService>(
      _i14.ProfileUserServiceImpl(get<_i3.Dio>()));
  await gh.factoryAsync<_i15.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i16.AuthApiService>(_i17.AuthApiServiceImpl(get<_i3.Dio>()));
  gh.singleton<_i18.AuthLocalService>(
      _i19.AuthLocalServiceImpl(get<_i15.SharedPreferences>()));
  gh.factory<_i20.AuthRepository>(() => _i21.AuthRepoImpl(
      get<_i16.AuthApiService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i22.CartRemoteService>(
      () => _i23.CartRemoteServiceImpl(get<_i3.Dio>()));
  gh.factory<_i24.CartRepository>(() => _i25.CartRepositoryImpl(
      get<_i22.CartRemoteService>(),
      get<_i6.Logger>(),
      get<_i18.AuthLocalService>()));
  gh.factory<_i26.CartRestApiImpl>(() => _i26.CartRestApiImpl(get<_i3.Dio>()));
  gh.singleton<_i27.CategoriesApiService>(
      _i28.CategoriesApiServiceImpl(get<_i3.Dio>()));
  gh.factory<_i29.CategoryRepository>(() => _i30.CategoryRepoImpl(
      get<_i27.CategoriesApiService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i31.ConfirmOrder>(
      () => _i31.ConfirmOrder(get<_i24.CartRepository>()));
  gh.factory<_i32.EditCart>(() => _i32.EditCart(get<_i24.CartRepository>()));
  gh.factory<_i33.FavoriteRepository>(() => _i34.FavoriteRepositoryImpl(
      get<_i4.FavoriteRemoteService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i35.GetCart>(() => _i35.GetCart(get<_i24.CartRepository>()));
  gh.factory<_i36.GetCategoriesUseCase>(
      () => _i36.GetCategoriesUseCase(get<_i29.CategoryRepository>()));
  gh.factory<_i37.GetFavorites>(
      () => _i37.GetFavorites(get<_i33.FavoriteRepository>()));
  gh.factory<_i38.GetProductsByCatIdUseCase>(
      () => _i38.GetProductsByCatIdUseCase(get<_i29.CategoryRepository>()));
  gh.factory<_i39.GetTokenUseCase>(
      () => _i39.GetTokenUseCase(get<_i20.AuthRepository>()));
  gh.singleton<_i40.LocalizationService>(
      _i40.LocaleServiceImpl(get<_i15.SharedPreferences>()));
  gh.factory<_i41.LoginUseCase>(
      () => _i41.LoginUseCase(get<_i20.AuthRepository>()));
  gh.factory<_i42.LogoutUseCase>(
      () => _i42.LogoutUseCase(get<_i20.AuthRepository>()));
  gh.factory<_i43.MerchantsRepository>(() => _i44.MerchantsRepoImpl(
      get<_i7.MerchantsApiService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i45.OrdersRepository>(() => _i46.OrdersRepoImpl(
      get<_i9.OrdersApiService>(), get<_i18.AuthLocalService>()));
  gh.factory<_i47.ProductRepo>(() => _i48.ProductsRepoImpl(
      get<_i11.ProductService>(), get<_i18.AuthLocalService>()));
  gh.singleton<_i49.ProfileRepository>(_i50.ProfileRepoImpl(
      get<_i18.AuthLocalService>(), get<_i13.ProfileUserService>()));
  gh.factory<_i51.RegisterUseCase>(
      () => _i51.RegisterUseCase(get<_i20.AuthRepository>()));
  gh.factory<_i52.RemoveFromFavorite>(
      () => _i52.RemoveFromFavorite(get<_i33.FavoriteRepository>()));
  gh.factory<_i53.ResetPassUseCase>(
      () => _i53.ResetPassUseCase(get<_i20.AuthRepository>()));
  gh.factory<_i54.UpdateUserUseCase>(
      () => _i54.UpdateUserUseCase(get<_i49.ProfileRepository>()));
  gh.factory<_i55.AddToFavorite>(
      () => _i55.AddToFavorite(get<_i33.FavoriteRepository>()));
  gh.factory<_i56.AuthCubit>(() => _i56.AuthCubit(
      get<_i41.LoginUseCase>(),
      get<_i42.LogoutUseCase>(),
      get<_i51.RegisterUseCase>(),
      get<_i39.GetTokenUseCase>(),
      get<_i53.ResetPassUseCase>()));
  gh.factory<_i57.CartCubit>(() => _i57.CartCubit(
      get<_i35.GetCart>(), get<_i32.EditCart>(), get<_i6.Logger>()));
  gh.factory<_i58.CategoryCubit>(() => _i58.CategoryCubit(
      get<_i36.GetCategoriesUseCase>(), get<_i38.GetProductsByCatIdUseCase>()));
  gh.factory<_i59.FavoritesCubit>(() => _i59.FavoritesCubit(
      get<_i55.AddToFavorite>(),
      get<_i52.RemoveFromFavorite>(),
      get<_i37.GetFavorites>()));
  gh.factory<_i60.GetMerchantsUseCase>(
      () => _i60.GetMerchantsUseCase(get<_i43.MerchantsRepository>()));
  gh.factory<_i61.GetOrderUseCase>(
      () => _i61.GetOrderUseCase(get<_i45.OrdersRepository>()));
  gh.factory<_i62.GetProducts>(() => _i62.GetProducts(get<_i47.ProductRepo>()));
  gh.factory<_i63.GetUserUseCase>(
      () => _i63.GetUserUseCase(get<_i49.ProfileRepository>()));
  gh.factory<_i64.LocalizationRepository>(
      () => _i65.LocalizationRepoImpl(get<_i40.LocalizationService>()));
  gh.factory<_i66.MerchantsCubit>(
      () => _i66.MerchantsCubit(get<_i60.GetMerchantsUseCase>()));
  gh.factory<_i67.OrdersCubit>(
      () => _i67.OrdersCubit(get<_i61.GetOrderUseCase>()));
  gh.factory<_i68.ProductsCubit>(
      () => _i68.ProductsCubit(get<_i62.GetProducts>()));
  gh.factory<_i69.ProfileCubit>(() => _i69.ProfileCubit(
      get<_i63.GetUserUseCase>(), get<_i54.UpdateUserUseCase>()));
  gh.factory<_i70.ChangeLocaleUseCase>(
      () => _i70.ChangeLocaleUseCase(get<_i64.LocalizationRepository>()));
  gh.factory<_i71.GetLocaleUseCase>(
      () => _i71.GetLocaleUseCase(get<_i64.LocalizationRepository>()));
  gh.factory<_i72.LocaleCubit>(() => _i72.LocaleCubit(
      get<_i71.GetLocaleUseCase>(), get<_i70.ChangeLocaleUseCase>()));
  return get;
}

class _$MyDioInject extends _i73.MyDioInject {}

class _$MyLoggerInject extends _i74.MyLoggerInject {}

class _$InjectionModule extends _i75.InjectionModule {}
