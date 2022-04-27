// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i41;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i66;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i65;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i71;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i72;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i73;
import '../core/presentation/cubit/back_button_cubit/back_button_cubit.dart'
    as _i3;
import '../features/auth/data/data_source/local/auth_local_service_impl.dart'
    as _i20;
import '../features/auth/data/data_source/remote/auth_api_service_impl.dart'
    as _i18;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i22;
import '../features/auth/domain/data_source/local/auth_local_service.dart'
    as _i19;
import '../features/auth/domain/data_source/remote/auth_api_service.dart'
    as _i17;
import '../features/auth/domain/repository/auth_repository.dart' as _i21;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i40;
import '../features/auth/domain/use_case/login_use_case.dart' as _i42;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i43;
import '../features/auth/domain/use_case/register_use_case.dart' as _i52;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i54;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i57;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i26;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i24;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i25;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i23;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i27;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i32;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i33;
import '../features/cart/domain/use_cases/get_cart.dart' as _i36;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i58;
import '../features/categories/data/data_source/remote/categories_api_service_impl.dart'
    as _i29;
import '../features/categories/data/repository/category_repo_impl.dart' as _i31;
import '../features/categories/domain/data_source/remote/categories_api_service.dart'
    as _i28;
import '../features/categories/domain/repository/category_repository.dart'
    as _i30;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i37;
import '../features/categories/domain/use_case/get_products_by_cat_id_use_case.dart'
    as _i39;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i59;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i35;
import '../features/favorites/data/service/remote/favorite_remote_service_impl.dart'
    as _i6;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i34;
import '../features/favorites/domain/data/service/favorite_remote_service.dart'
    as _i5;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i56;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i38;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i53;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i60;
import '../features/merchants/data/data_source/remote/merchants_api_service_impl.dart'
    as _i9;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i45;
import '../features/merchants/domain/data_source/remote/merchants_api_service.dart'
    as _i8;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i44;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i61;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i67;
import '../features/orders/data/data_source/remote/orders_api_service_impl.dart'
    as _i11;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i47;
import '../features/orders/domain/data_source/remote/orders_api_service.dart'
    as _i10;
import '../features/orders/domain/repository/order_repository.dart' as _i46;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i62;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i68;
import '../features/products/data/repository/products_repo_impl.dart' as _i49;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i13;
import '../features/products/domain/repository/product_repo.dart' as _i48;
import '../features/products/domain/service/product_service.dart' as _i12;
import '../features/products/domain/use_cases/get_products.dart' as _i63;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i69;
import '../features/profile/data/data_source/remote/profile_user_service_impl.dart'
    as _i15;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i51;
import '../features/profile/domain/data_source/remote/profile_user_service.dart'
    as _i14;
import '../features/profile/domain/repository/profile_repository.dart' as _i50;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i64;
import '../features/profile/domain/use_case/update_user_use_case.dart' as _i55;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i70;
import 'module/dio.dart' as _i74;
import 'module/logger.dart' as _i75;
import 'module/shared_preferences.dart' as _i76;

const String _localMock = 'localMock';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final myLoggerInject = _$MyLoggerInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.BackButtonCubit>(() => _i3.BackButtonCubit());
  gh.factory<_i4.Dio>(() => myDioInject.dio);
  gh.factory<_i5.FavoriteRemoteService>(() => _i6.FavoriteRemoteServiceLocal(),
      registerFor: {_localMock});
  gh.factory<_i5.FavoriteRemoteService>(
      () => _i6.FavoriteRemoteServiceImpl(get<_i4.Dio>()),
      registerFor: {_test});
  gh.factory<_i7.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i8.MerchantsApiService>(
      _i9.MerchantsApiServiceImpl(get<_i4.Dio>()));
  gh.singleton<_i10.OrdersApiService>(
      _i11.OrdersApiServiceImpl(get<_i4.Dio>()));
  gh.factory<_i12.ProductService>(() => _i13.ProductServiceImplLocal(),
      registerFor: {_localMock});
  gh.factory<_i12.ProductService>(() => _i13.ProductServiceImpl(get<_i4.Dio>()),
      registerFor: {_test});
  gh.singleton<_i14.ProfileUserService>(
      _i15.ProfileUserServiceImpl(get<_i4.Dio>()));
  await gh.factoryAsync<_i16.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i17.AuthApiService>(_i18.AuthApiServiceImpl(get<_i4.Dio>()));
  gh.singleton<_i19.AuthLocalService>(
      _i20.AuthLocalServiceImpl(get<_i16.SharedPreferences>()));
  gh.factory<_i21.AuthRepository>(() => _i22.AuthRepoImpl(
      get<_i17.AuthApiService>(), get<_i19.AuthLocalService>()));
  gh.factory<_i23.CartRemoteService>(
      () => _i24.CartRemoteServiceImpl(get<_i4.Dio>()));
  gh.factory<_i25.CartRepository>(() => _i26.CartRepositoryImpl(
      get<_i23.CartRemoteService>(),
      get<_i7.Logger>(),
      get<_i19.AuthLocalService>()));
  gh.factory<_i27.CartRestApiImpl>(() => _i27.CartRestApiImpl(get<_i4.Dio>()));
  gh.singleton<_i28.CategoriesApiService>(
      _i29.CategoriesApiServiceImpl(get<_i4.Dio>()));
  gh.factory<_i30.CategoryRepository>(() => _i31.CategoryRepoImpl(
      get<_i28.CategoriesApiService>(), get<_i19.AuthLocalService>()));
  gh.factory<_i32.ConfirmOrder>(
      () => _i32.ConfirmOrder(get<_i25.CartRepository>()));
  gh.factory<_i33.EditCart>(() => _i33.EditCart(get<_i25.CartRepository>()));
  gh.factory<_i34.FavoriteRepository>(() => _i35.FavoriteRepositoryImpl(
      get<_i5.FavoriteRemoteService>(), get<_i19.AuthLocalService>()));
  gh.factory<_i36.GetCart>(() => _i36.GetCart(get<_i25.CartRepository>()));
  gh.factory<_i37.GetCategoriesUseCase>(
      () => _i37.GetCategoriesUseCase(get<_i30.CategoryRepository>()));
  gh.factory<_i38.GetFavorites>(
      () => _i38.GetFavorites(get<_i34.FavoriteRepository>()));
  gh.factory<_i39.GetProductsByCatIdUseCase>(
      () => _i39.GetProductsByCatIdUseCase(get<_i30.CategoryRepository>()));
  gh.factory<_i40.GetTokenUseCase>(
      () => _i40.GetTokenUseCase(get<_i21.AuthRepository>()));
  gh.singleton<_i41.LocalizationService>(
      _i41.LocaleServiceImpl(get<_i16.SharedPreferences>()));
  gh.factory<_i42.LoginUseCase>(
      () => _i42.LoginUseCase(get<_i21.AuthRepository>()));
  gh.factory<_i43.LogoutUseCase>(
      () => _i43.LogoutUseCase(get<_i21.AuthRepository>()));
  gh.factory<_i44.MerchantsRepository>(() => _i45.MerchantsRepoImpl(
      get<_i8.MerchantsApiService>(), get<_i19.AuthLocalService>()));
  gh.factory<_i46.OrdersRepository>(() => _i47.OrdersRepoImpl(
      get<_i10.OrdersApiService>(), get<_i19.AuthLocalService>()));
  gh.factory<_i48.ProductRepo>(() => _i49.ProductsRepoImpl(
      get<_i12.ProductService>(), get<_i19.AuthLocalService>()));
  gh.singleton<_i50.ProfileRepository>(_i51.ProfileRepoImpl(
      get<_i19.AuthLocalService>(), get<_i14.ProfileUserService>()));
  gh.factory<_i52.RegisterUseCase>(
      () => _i52.RegisterUseCase(get<_i21.AuthRepository>()));
  gh.factory<_i53.RemoveFromFavorite>(
      () => _i53.RemoveFromFavorite(get<_i34.FavoriteRepository>()));
  gh.factory<_i54.ResetPassUseCase>(
      () => _i54.ResetPassUseCase(get<_i21.AuthRepository>()));
  gh.factory<_i55.UpdateUserUseCase>(
      () => _i55.UpdateUserUseCase(get<_i50.ProfileRepository>()));
  gh.factory<_i56.AddToFavorite>(
      () => _i56.AddToFavorite(get<_i34.FavoriteRepository>()));
  gh.factory<_i57.AuthCubit>(() => _i57.AuthCubit(
      get<_i42.LoginUseCase>(),
      get<_i43.LogoutUseCase>(),
      get<_i52.RegisterUseCase>(),
      get<_i40.GetTokenUseCase>(),
      get<_i54.ResetPassUseCase>()));
  gh.factory<_i58.CartCubit>(() => _i58.CartCubit(get<_i36.GetCart>(),
      get<_i33.EditCart>(), get<_i7.Logger>(), get<_i32.ConfirmOrder>()));
  gh.factory<_i59.CategoryCubit>(() => _i59.CategoryCubit(
      get<_i37.GetCategoriesUseCase>(), get<_i39.GetProductsByCatIdUseCase>()));
  gh.factory<_i60.FavoritesCubit>(() => _i60.FavoritesCubit(
      get<_i56.AddToFavorite>(),
      get<_i53.RemoveFromFavorite>(),
      get<_i38.GetFavorites>()));
  gh.factory<_i61.GetMerchantsUseCase>(
      () => _i61.GetMerchantsUseCase(get<_i44.MerchantsRepository>()));
  gh.factory<_i62.GetOrderUseCase>(
      () => _i62.GetOrderUseCase(get<_i46.OrdersRepository>()));
  gh.factory<_i63.GetProducts>(() => _i63.GetProducts(get<_i48.ProductRepo>()));
  gh.factory<_i64.GetUserUseCase>(
      () => _i64.GetUserUseCase(get<_i50.ProfileRepository>()));
  gh.factory<_i65.LocalizationRepository>(
      () => _i66.LocalizationRepoImpl(get<_i41.LocalizationService>()));
  gh.factory<_i67.MerchantsCubit>(
      () => _i67.MerchantsCubit(get<_i61.GetMerchantsUseCase>()));
  gh.factory<_i68.OrdersCubit>(
      () => _i68.OrdersCubit(get<_i62.GetOrderUseCase>()));
  gh.factory<_i69.ProductsCubit>(
      () => _i69.ProductsCubit(get<_i63.GetProducts>()));
  gh.factory<_i70.ProfileCubit>(() => _i70.ProfileCubit(
      get<_i64.GetUserUseCase>(), get<_i55.UpdateUserUseCase>()));
  gh.factory<_i71.ChangeLocaleUseCase>(
      () => _i71.ChangeLocaleUseCase(get<_i65.LocalizationRepository>()));
  gh.factory<_i72.GetLocaleUseCase>(
      () => _i72.GetLocaleUseCase(get<_i65.LocalizationRepository>()));
  gh.factory<_i73.LocaleCubit>(() => _i73.LocaleCubit(
      get<_i72.GetLocaleUseCase>(), get<_i71.ChangeLocaleUseCase>()));
  return get;
}

class _$MyDioInject extends _i74.MyDioInject {}

class _$MyLoggerInject extends _i75.MyLoggerInject {}

class _$InjectionModule extends _i76.InjectionModule {}
