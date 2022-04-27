// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i34;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i67;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i66;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i73;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i74;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i75;
import '../core/presentation/cubit/back_button_cubit/back_button_cubit.dart'
    as _i3;
import '../features/auth/data/data_source/local/auth_local_service_impl.dart'
    as _i18;
import '../features/auth/data/data_source/remote/auth_api_service_impl.dart'
    as _i16;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i20;
import '../features/auth/domain/data_source/local/auth_local_service.dart'
    as _i17;
import '../features/auth/domain/data_source/remote/auth_api_service.dart'
    as _i15;
import '../features/auth/domain/repository/auth_repository.dart' as _i19;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i33;
import '../features/auth/domain/use_case/login_use_case.dart' as _i35;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i36;
import '../features/auth/domain/use_case/register_use_case.dart' as _i47;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i49;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i52;
import '../features/cart/data/data_source/remote/cart_remote_data_source_impl.dart'
    as _i54;
import '../features/cart/data/data_source/remote/cart_remote_service.dart'
    as _i21;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i56;
import '../features/cart/domain/data/data_source/cart_remote_data_source.dart'
    as _i53;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i55;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i58;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i59;
import '../features/cart/domain/use_cases/get_cart.dart' as _i61;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i72;
import '../features/categories/data/data_source/remote/categories_api_service_impl.dart'
    as _i23;
import '../features/categories/data/repository/category_repo_impl.dart' as _i25;
import '../features/categories/domain/data_source/remote/categories_api_service.dart'
    as _i22;
import '../features/categories/domain/repository/category_repository.dart'
    as _i24;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i30;
import '../features/categories/domain/use_case/get_products_by_cat_id_use_case.dart'
    as _i32;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i57;
import '../features/favorites/data/data_source/remote/favorite_remote_service_impl.dart'
    as _i5;
import '../features/favorites/data/data_source/remote/favorites_remote_data_source.dart'
    as _i27;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i29;
import '../features/favorites/domain/data/data_source/favorite_remote_data_source.dart'
    as _i26;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i28;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i51;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i31;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i48;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i60;
import '../features/merchants/data/data_source/remote/merchants_api_service_impl.dart'
    as _i8;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i38;
import '../features/merchants/domain/data_source/remote/merchants_api_service.dart'
    as _i7;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i37;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i62;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i68;
import '../features/orders/data/data_source/remote/orders_api_service_impl.dart'
    as _i10;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i40;
import '../features/orders/domain/data_source/remote/orders_api_service.dart'
    as _i9;
import '../features/orders/domain/repository/order_repository.dart' as _i39;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i63;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i69;
import '../features/products/data/data_source/remote/product_remote_data_source.dart'
    as _i42;
import '../features/products/data/data_source/remote/product_service_impl.dart'
    as _i11;
import '../features/products/data/repository/products_repo_impl.dart' as _i44;
import '../features/products/domain/data_source/product_remote_data_source.dart'
    as _i41;
import '../features/products/domain/repository/product_repo.dart' as _i43;
import '../features/products/domain/use_cases/get_products.dart' as _i64;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i70;
import '../features/profile/data/data_source/remote/profile_user_service_impl.dart'
    as _i13;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i46;
import '../features/profile/domain/data_source/remote/profile_user_service.dart'
    as _i12;
import '../features/profile/domain/repository/profile_repository.dart' as _i45;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i65;
import '../features/profile/domain/use_case/update_user_use_case.dart' as _i50;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i71;
import 'module/dio.dart' as _i76;
import 'module/logger.dart' as _i77;
import 'module/shared_preferences.dart' as _i78;

const String _test = 'test';
const String _localMock = 'localMock';
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
  gh.factory<_i5.FavoriteRemoteService>(
      () => _i5.FavoriteRemoteServiceImpl(get<_i4.Dio>()),
      registerFor: {_test});
  gh.factory<_i5.FavoriteRemoteService>(() => _i5.FavoriteRemoteServiceLocal(),
      registerFor: {_localMock});
  gh.factory<_i6.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i7.MerchantsApiService>(
      _i8.MerchantsApiServiceImpl(get<_i4.Dio>()));
  gh.singleton<_i9.OrdersApiService>(_i10.OrdersApiServiceImpl(get<_i4.Dio>()));
  gh.factory<_i11.ProductServiceImpl>(
      () => _i11.ProductServiceImpl(get<_i4.Dio>()),
      registerFor: {_localMock});
  gh.singleton<_i12.ProfileUserService>(
      _i13.ProfileUserServiceImpl(get<_i4.Dio>()));
  await gh.factoryAsync<_i14.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i15.AuthApiService>(_i16.AuthApiServiceImpl(get<_i4.Dio>()));
  gh.singleton<_i17.AuthLocalService>(
      _i18.AuthLocalServiceImpl(get<_i14.SharedPreferences>()));
  gh.factory<_i19.AuthRepository>(() => _i20.AuthRepoImpl(
      get<_i15.AuthApiService>(), get<_i17.AuthLocalService>()));
  gh.factory<_i21.CartRemoteService>(
      () => _i21.CartRemoteService(get<_i4.Dio>()));
  gh.singleton<_i22.CategoriesApiService>(
      _i23.CategoriesApiServiceImpl(get<_i4.Dio>()));
  gh.factory<_i24.CategoryRepository>(() => _i25.CategoryRepoImpl(
      get<_i22.CategoriesApiService>(), get<_i17.AuthLocalService>()));
  gh.factory<_i26.FavoriteRemoteDataSource>(() =>
      _i27.FavoriteRemoteDataSourceImpl(get<_i5.FavoriteRemoteService>()));
  gh.factory<_i28.FavoriteRepository>(() => _i29.FavoriteRepositoryImpl(
      get<_i26.FavoriteRemoteDataSource>(), get<_i17.AuthLocalService>()));
  gh.factory<_i30.GetCategoriesUseCase>(
      () => _i30.GetCategoriesUseCase(get<_i24.CategoryRepository>()));
  gh.factory<_i31.GetFavorites>(
      () => _i31.GetFavorites(get<_i28.FavoriteRepository>()));
  gh.factory<_i32.GetProductsByCatIdUseCase>(
      () => _i32.GetProductsByCatIdUseCase(get<_i24.CategoryRepository>()));
  gh.factory<_i33.GetTokenUseCase>(
      () => _i33.GetTokenUseCase(get<_i19.AuthRepository>()));
  gh.singleton<_i34.LocalizationService>(
      _i34.LocaleServiceImpl(get<_i14.SharedPreferences>()));
  gh.factory<_i35.LoginUseCase>(
      () => _i35.LoginUseCase(get<_i19.AuthRepository>()));
  gh.factory<_i36.LogoutUseCase>(
      () => _i36.LogoutUseCase(get<_i19.AuthRepository>()));
  gh.factory<_i37.MerchantsRepository>(() => _i38.MerchantsRepoImpl(
      get<_i7.MerchantsApiService>(), get<_i17.AuthLocalService>()));
  gh.factory<_i39.OrdersRepository>(() => _i40.OrdersRepoImpl(
      get<_i9.OrdersApiService>(), get<_i17.AuthLocalService>()));
  gh.factory<_i41.ProductRemoteDataSource>(
      () => _i42.ProductRemoteDataSourceImpl(get<_i11.ProductServiceImpl>()));
  gh.factory<_i43.ProductRepo>(() => _i44.ProductsRepoImpl(
      get<_i41.ProductRemoteDataSource>(), get<_i17.AuthLocalService>()));
  gh.singleton<_i45.ProfileRepository>(_i46.ProfileRepoImpl(
      get<_i17.AuthLocalService>(), get<_i12.ProfileUserService>()));
  gh.factory<_i47.RegisterUseCase>(
      () => _i47.RegisterUseCase(get<_i19.AuthRepository>()));
  gh.factory<_i48.RemoveFromFavorite>(
      () => _i48.RemoveFromFavorite(get<_i28.FavoriteRepository>()));
  gh.factory<_i49.ResetPassUseCase>(
      () => _i49.ResetPassUseCase(get<_i19.AuthRepository>()));
  gh.factory<_i50.UpdateUserUseCase>(
      () => _i50.UpdateUserUseCase(get<_i45.ProfileRepository>()));
  gh.factory<_i51.AddToFavorite>(
      () => _i51.AddToFavorite(get<_i28.FavoriteRepository>()));
  gh.factory<_i52.AuthCubit>(() => _i52.AuthCubit(
      get<_i35.LoginUseCase>(),
      get<_i36.LogoutUseCase>(),
      get<_i47.RegisterUseCase>(),
      get<_i33.GetTokenUseCase>(),
      get<_i49.ResetPassUseCase>()));
  gh.factory<_i53.CartRemoteDataSource>(
      () => _i54.CartRemoteDataSourceImp(get<_i21.CartRemoteService>()));
  gh.factory<_i55.CartRepository>(() => _i56.CartRepositoryImpl(
      get<_i53.CartRemoteDataSource>(),
      get<_i6.Logger>(),
      get<_i17.AuthLocalService>()));
  gh.factory<_i57.CategoryCubit>(() => _i57.CategoryCubit(
      get<_i30.GetCategoriesUseCase>(), get<_i32.GetProductsByCatIdUseCase>()));
  gh.factory<_i58.ConfirmOrder>(
      () => _i58.ConfirmOrder(get<_i55.CartRepository>()));
  gh.factory<_i59.EditCart>(() => _i59.EditCart(get<_i55.CartRepository>()));
  gh.factory<_i60.FavoritesCubit>(() => _i60.FavoritesCubit(
      get<_i51.AddToFavorite>(),
      get<_i48.RemoveFromFavorite>(),
      get<_i31.GetFavorites>()));
  gh.factory<_i61.GetCart>(() => _i61.GetCart(get<_i55.CartRepository>()));
  gh.factory<_i62.GetMerchantsUseCase>(
      () => _i62.GetMerchantsUseCase(get<_i37.MerchantsRepository>()));
  gh.factory<_i63.GetOrderUseCase>(
      () => _i63.GetOrderUseCase(get<_i39.OrdersRepository>()));
  gh.factory<_i64.GetProducts>(() => _i64.GetProducts(get<_i43.ProductRepo>()));
  gh.factory<_i65.GetUserUseCase>(
      () => _i65.GetUserUseCase(get<_i45.ProfileRepository>()));
  gh.factory<_i66.LocalizationRepository>(
      () => _i67.LocalizationRepoImpl(get<_i34.LocalizationService>()));
  gh.factory<_i68.MerchantsCubit>(
      () => _i68.MerchantsCubit(get<_i62.GetMerchantsUseCase>()));
  gh.factory<_i69.OrdersCubit>(
      () => _i69.OrdersCubit(get<_i63.GetOrderUseCase>()));
  gh.factory<_i70.ProductsCubit>(
      () => _i70.ProductsCubit(get<_i64.GetProducts>()));
  gh.factory<_i71.ProfileCubit>(() => _i71.ProfileCubit(
      get<_i65.GetUserUseCase>(), get<_i50.UpdateUserUseCase>()));
  gh.factory<_i72.CartCubit>(() => _i72.CartCubit(get<_i61.GetCart>(),
      get<_i59.EditCart>(), get<_i6.Logger>(), get<_i58.ConfirmOrder>()));
  gh.factory<_i73.ChangeLocaleUseCase>(
      () => _i73.ChangeLocaleUseCase(get<_i66.LocalizationRepository>()));
  gh.factory<_i74.GetLocaleUseCase>(
      () => _i74.GetLocaleUseCase(get<_i66.LocalizationRepository>()));
  gh.factory<_i75.LocaleCubit>(() => _i75.LocaleCubit(
      get<_i74.GetLocaleUseCase>(), get<_i73.ChangeLocaleUseCase>()));
  return get;
}

class _$MyDioInject extends _i76.MyDioInject {}

class _$MyLoggerInject extends _i77.MyLoggerInject {}

class _$InjectionModule extends _i78.InjectionModule {}
