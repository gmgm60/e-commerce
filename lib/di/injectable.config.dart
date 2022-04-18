// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i33;
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
    as _i14;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i13;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i16;
import '../features/auth/domain/repository/auth_repository.dart' as _i15;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i32;
import '../features/auth/domain/use_case/login_use_case.dart' as _i34;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i35;
import '../features/auth/domain/use_case/register_use_case.dart' as _i44;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i46;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i48;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i20;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i18;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i19;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i17;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i21;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i25;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i26;
import '../features/cart/domain/use_cases/get_cart.dart' as _i29;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i49;
import '../features/categories/data/data_source/remote/categories_api_service.dart'
    as _i22;
import '../features/categories/data/repository/category_repo_impl.dart' as _i24;
import '../features/categories/domain/repository/category_repository.dart'
    as _i23;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i30;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i50;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i28;
import '../features/favorites/data/service/remote/favorite_remote_service_impl.dart'
    as _i5;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i27;
import '../features/favorites/domain/data/service/favorite_remote_service.dart'
    as _i4;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i47;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i31;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i45;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i51;
import '../features/merchants/data/data_source/remote/merchants_api_service.dart'
    as _i7;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i37;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i36;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i52;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i58;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i8;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i39;
import '../features/orders/domain/repository/order_repository.dart' as _i38;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i53;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i59;
import '../features/products/data/repository/products_repo_impl.dart' as _i41;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i10;
import '../features/products/domain/repository/product_repo.dart' as _i40;
import '../features/products/domain/service/product_service.dart' as _i9;
import '../features/products/domain/use_cases/get_products.dart' as _i54;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i60;
import '../features/profile/data/data_source/remote/profile_user_service.dart'
    as _i11;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i43;
import '../features/profile/domain/repository/profile_repository.dart' as _i42;
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
  gh.factory<_i6.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i7.MerchantsApiService>(
      _i7.MerchantsApiService(get<_i3.Dio>()));
  gh.singleton<_i8.OrdersApiService>(_i8.OrdersApiService(get<_i3.Dio>()));
  gh.factory<_i9.ProductService>(() => _i10.ProductServiceImpl(get<_i3.Dio>()));
  gh.singleton<_i11.ProfileUserService>(
      _i11.ProfileUserService(get<_i3.Dio>()));
  await gh.factoryAsync<_i12.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i13.AuthApiService>(_i13.AuthApiService(get<_i3.Dio>()));
  gh.singleton<_i14.AuthLocalService>(
      _i14.AuthLocalServiceImpl(get<_i12.SharedPreferences>()));
  gh.factory<_i15.AuthRepository>(() => _i16.AuthRepoImpl(
      get<_i13.AuthApiService>(), get<_i14.AuthLocalService>()));
  gh.factory<_i17.CartRemoteService>(
      () => _i18.CartRemoteServiceImpl(get<_i3.Dio>()));
  gh.factory<_i19.CartRepository>(() => _i20.CartRepositoryImpl(
      get<_i17.CartRemoteService>(),
      get<_i6.Logger>(),
      get<_i14.AuthLocalService>()));
  gh.factory<_i21.CartRestApiImpl>(() => _i21.CartRestApiImpl(get<_i3.Dio>()));
  gh.singleton<_i22.CategoriesApiService>(
      _i22.CategoriesApiService(get<_i3.Dio>()));
  gh.factory<_i23.CategoryRepository>(() => _i24.CategoryRepoImpl(
      get<_i22.CategoriesApiService>(), get<_i14.AuthLocalService>()));
  gh.factory<_i25.ConfirmOrder>(
      () => _i25.ConfirmOrder(get<_i19.CartRepository>()));
  gh.factory<_i26.EditCart>(() => _i26.EditCart(get<_i19.CartRepository>()));
  gh.factory<_i27.FavoriteRepository>(() => _i28.FavoriteRepositoryImpl(
      get<_i4.FavoriteRemoteService>(), get<_i14.AuthLocalService>()));
  gh.factory<_i29.GetCart>(() => _i29.GetCart(get<_i19.CartRepository>()));
  gh.factory<_i30.GetCategoriesUseCase>(
      () => _i30.GetCategoriesUseCase(get<_i23.CategoryRepository>()));
  gh.factory<_i31.GetFavorites>(
      () => _i31.GetFavorites(get<_i27.FavoriteRepository>()));
  gh.factory<_i32.GetTokenUseCase>(
      () => _i32.GetTokenUseCase(get<_i15.AuthRepository>()));
  gh.singleton<_i33.LocalizationService>(
      _i33.LocaleServiceImpl(get<_i12.SharedPreferences>()));
  gh.factory<_i34.LoginUseCase>(
      () => _i34.LoginUseCase(get<_i15.AuthRepository>()));
  gh.factory<_i35.LogoutUseCase>(
      () => _i35.LogoutUseCase(get<_i15.AuthRepository>()));
  gh.factory<_i36.MerchantsRepository>(() => _i37.MerchantsRepoImpl(
      get<_i7.MerchantsApiService>(), get<_i14.AuthLocalService>()));
  gh.factory<_i38.OrdersRepository>(() => _i39.OrdersRepoImpl(
      get<_i8.OrdersApiService>(), get<_i14.AuthLocalService>()));
  gh.factory<_i40.ProductRepo>(() => _i41.ProductsRepoImpl(
      get<_i9.ProductService>(), get<_i14.AuthLocalService>()));
  gh.singleton<_i42.ProfileRepository>(_i43.ProfileRepoImpl(
      get<_i14.AuthLocalService>(), get<_i11.ProfileUserService>()));
  gh.factory<_i44.RegisterUseCase>(
      () => _i44.RegisterUseCase(get<_i15.AuthRepository>()));
  gh.factory<_i45.RemoveFromFavorite>(
      () => _i45.RemoveFromFavorite(get<_i27.FavoriteRepository>()));
  gh.factory<_i46.ResetPassUseCase>(
      () => _i46.ResetPassUseCase(get<_i15.AuthRepository>()));
  gh.factory<_i47.AddToFavorite>(
      () => _i47.AddToFavorite(get<_i27.FavoriteRepository>()));
  gh.factory<_i48.AuthCubit>(() => _i48.AuthCubit(
      get<_i34.LoginUseCase>(),
      get<_i35.LogoutUseCase>(),
      get<_i44.RegisterUseCase>(),
      get<_i32.GetTokenUseCase>(),
      get<_i46.ResetPassUseCase>()));
  gh.factory<_i49.CartCubit>(() => _i49.CartCubit(
      get<_i29.GetCart>(), get<_i26.EditCart>(), get<_i6.Logger>()));
  gh.factory<_i50.CategoryCubit>(
      () => _i50.CategoryCubit(get<_i30.GetCategoriesUseCase>()));
  gh.factory<_i51.FavoritesCubit>(() => _i51.FavoritesCubit(
      get<_i47.AddToFavorite>(),
      get<_i45.RemoveFromFavorite>(),
      get<_i31.GetFavorites>()));
  gh.factory<_i52.GetMerchantsUseCase>(
      () => _i52.GetMerchantsUseCase(get<_i36.MerchantsRepository>()));
  gh.factory<_i53.GetOrderUseCase>(
      () => _i53.GetOrderUseCase(get<_i38.OrdersRepository>()));
  gh.factory<_i54.GetProducts>(() => _i54.GetProducts(get<_i40.ProductRepo>()));
  gh.factory<_i55.GetUserUseCase>(
      () => _i55.GetUserUseCase(get<_i42.ProfileRepository>()));
  gh.factory<_i56.LocalizationRepository>(
      () => _i57.LocalizationRepoImpl(get<_i33.LocalizationService>()));
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
