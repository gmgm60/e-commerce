// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i44;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i76;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i75;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i80;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i81;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i82;
import '../core/presentation/cubit/back_button_cubit/back_button_cubit.dart'
    as _i4;
import '../features/auth/data/data_source/local/auth_local_datasource_impl.dart'
    as _i23;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i21;
import '../features/auth/data/data_source/remote/auth_remote_datasource_impl.dart'
    as _i25;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i27;
import '../features/auth/domain/data_source/local/auth_local_datasource.dart'
    as _i22;
import '../features/auth/domain/data_source/remote/auth_remote_datasource.dart'
    as _i24;
import '../features/auth/domain/repository/auth_repository.dart' as _i26;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i43;
import '../features/auth/domain/use_case/login_use_case.dart' as _i45;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i46;
import '../features/auth/domain/use_case/register_use_case.dart' as _i57;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i59;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i62;
import '../features/cart/data/data_source/remote/cart_remote_data_source_impl.dart'
    as _i64;
import '../features/cart/data/data_source/remote/cart_remote_service.dart'
    as _i28;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i66;
import '../features/cart/domain/data/data_source/cart_remote_data_source.dart'
    as _i63;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i65;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i68;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i69;
import '../features/cart/domain/use_cases/get_cart.dart' as _i71;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i79;
import '../features/categories/data/data_source/remote/categories_api_service.dart'
    as _i29;
import '../features/categories/data/data_source/remote/categories_remote_datasource_impl.dart'
    as _i31;
import '../features/categories/data/repository/category_repo_impl.dart' as _i33;
import '../features/categories/domain/data_source/remote/categories_remote_datasource.dart'
    as _i30;
import '../features/categories/domain/repository/category_repository.dart'
    as _i32;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i38;
import '../features/categories/domain/use_case/get_products_by_cat_id_use_case.dart'
    as _i42;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i67;
import '../features/favorites/data/data_source/remote/favorite_remote_service_impl.dart'
    as _i6;
import '../features/favorites/data/data_source/remote/favorites_remote_data_source.dart'
    as _i35;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i37;
import '../features/favorites/domain/data/data_source/favorite_remote_data_source.dart'
    as _i34;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i36;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i61;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i39;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i58;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i70;
import '../features/merchants/data/data_source/remote/merchants_api_service.dart'
    as _i8;
import '../features/merchants/data/data_source/remote/merchants_remote_datasource_impl.dart'
    as _i10;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i12;
import '../features/merchants/domain/data_source/remote/merchants_remote_datasource.dart'
    as _i9;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i11;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i40;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i47;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i13;
import '../features/orders/data/data_source/remote/orders_remote_datasource_impl.dart'
    as _i15;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i17;
import '../features/orders/domain/data_source/remote/orders_remote_datasource.dart'
    as _i14;
import '../features/orders/domain/repository/order_repository.dart' as _i16;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i41;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i48;
import '../features/products/data/data_source/remote/product_remote_data_source.dart'
    as _i50;
import '../features/products/data/data_source/remote/product_service_impl.dart'
    as _i18;
import '../features/products/data/repository/products_repo_impl.dart' as _i52;
import '../features/products/domain/data_source/product_remote_data_source.dart'
    as _i49;
import '../features/products/domain/repository/product_repo.dart' as _i51;
import '../features/products/domain/use_cases/get_product.dart' as _i72;
import '../features/products/domain/use_cases/get_products.dart' as _i73;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i77;
import '../features/profile/data/data_source/remote/profile_remote_datasource_impl.dart'
    as _i54;
import '../features/profile/data/data_source/remote/profile_user_service.dart'
    as _i19;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i56;
import '../features/profile/domain/data_source/remote/profile_remote_datasource.dart'
    as _i53;
import '../features/profile/domain/repository/profile_repository.dart' as _i55;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i74;
import '../features/profile/domain/use_case/update_user_use_case.dart' as _i60;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i78;
import 'module/app_interceptor.dart' as _i3;
import 'module/dio.dart' as _i83;
import 'module/logger.dart' as _i84;
import 'module/shared_preferences.dart' as _i85;

const String _localMock = 'localMock';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDioInject = _$AppDioInject();
  final myLoggerInject = _$MyLoggerInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.AppInterceptor>(() => _i3.AppInterceptor());
  gh.factory<_i4.BackButtonCubit>(() => _i4.BackButtonCubit());
  gh.factory<_i5.Dio>(() => appDioInject.dio);
  gh.factory<_i6.FavoriteRemoteService>(() => _i6.FavoriteRemoteServiceLocal(),
      registerFor: {_localMock});
  gh.factory<_i6.FavoriteRemoteService>(
      () => _i6.FavoriteRemoteServiceImpl(get<_i5.Dio>()),
      registerFor: {_test});
  gh.factory<_i7.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i8.MerchantsApiService>(
      _i8.MerchantsApiService(get<_i5.Dio>()));
  gh.factory<_i9.MerchantsRemoteDatasource>(
      () => _i10.MerchantsRemoteDatasourceImpl(get<_i8.MerchantsApiService>()));
  gh.factory<_i11.MerchantsRepository>(
      () => _i12.MerchantsRepoImpl(get<_i9.MerchantsRemoteDatasource>()));
  gh.singleton<_i13.OrdersApiService>(_i13.OrdersApiService(get<_i5.Dio>()));
  gh.factory<_i14.OrdersRemoteDatasource>(
      () => _i15.OrdersRemoteDatasourceImpl(get<_i13.OrdersApiService>()));
  gh.factory<_i16.OrdersRepository>(
      () => _i17.OrdersRepoImpl(get<_i14.OrdersRemoteDatasource>()));
  gh.factory<_i18.ProductServiceImpl>(
      () => _i18.ProductServiceImpl(get<_i5.Dio>()),
      registerFor: {_localMock});
  gh.singleton<_i19.ProfileUserService>(
      _i19.ProfileUserService(get<_i5.Dio>()));
  await gh.factoryAsync<_i20.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i21.AuthApiService>(_i21.AuthApiService(get<_i5.Dio>()));
  gh.singleton<_i22.AuthLocalDatasource>(
      _i23.AuthLocalDatasourceImpl(get<_i20.SharedPreferences>()));
  gh.factory<_i24.AuthRemoteDatasource>(
      () => _i25.AuthRemoteDatasourceImpl(get<_i21.AuthApiService>()));
  gh.factory<_i26.AuthRepository>(() => _i27.AuthRepoImpl(
      get<_i24.AuthRemoteDatasource>(), get<_i22.AuthLocalDatasource>()));
  gh.factory<_i28.CartRemoteService>(
      () => _i28.CartRemoteService(get<_i5.Dio>()));
  gh.singleton<_i29.CategoriesApiService>(
      _i29.CategoriesApiService(get<_i5.Dio>()));
  gh.factory<_i30.CategoriesRemoteDatasource>(() =>
      _i31.CategoriesRemoteDatasourceImpl(get<_i29.CategoriesApiService>()));
  gh.factory<_i32.CategoryRepository>(
      () => _i33.CategoryRepoImpl(get<_i30.CategoriesRemoteDatasource>()));
  gh.factory<_i34.FavoriteRemoteDataSource>(() =>
      _i35.FavoriteRemoteDataSourceImpl(get<_i6.FavoriteRemoteService>()));
  gh.factory<_i36.FavoriteRepository>(
      () => _i37.FavoriteRepositoryImpl(get<_i34.FavoriteRemoteDataSource>()));
  gh.factory<_i38.GetCategoriesUseCase>(
      () => _i38.GetCategoriesUseCase(get<_i32.CategoryRepository>()));
  gh.factory<_i39.GetFavorites>(
      () => _i39.GetFavorites(get<_i36.FavoriteRepository>()));
  gh.factory<_i40.GetMerchantsUseCase>(
      () => _i40.GetMerchantsUseCase(get<_i11.MerchantsRepository>()));
  gh.factory<_i41.GetOrderUseCase>(
      () => _i41.GetOrderUseCase(get<_i16.OrdersRepository>()));
  gh.factory<_i42.GetProductsByCatIdUseCase>(
      () => _i42.GetProductsByCatIdUseCase(get<_i32.CategoryRepository>()));
  gh.factory<_i43.GetTokenUseCase>(
      () => _i43.GetTokenUseCase(get<_i26.AuthRepository>()));
  gh.singleton<_i44.LocalizationService>(
      _i44.LocaleServiceImpl(get<_i20.SharedPreferences>()));
  gh.factory<_i45.LoginUseCase>(
      () => _i45.LoginUseCase(get<_i26.AuthRepository>()));
  gh.factory<_i46.LogoutUseCase>(
      () => _i46.LogoutUseCase(get<_i26.AuthRepository>()));
  gh.factory<_i47.MerchantsCubit>(
      () => _i47.MerchantsCubit(get<_i40.GetMerchantsUseCase>()));
  gh.factory<_i48.OrdersCubit>(
      () => _i48.OrdersCubit(get<_i41.GetOrderUseCase>()));
  gh.factory<_i49.ProductRemoteDataSource>(
      () => _i50.ProductRemoteDataSourceImpl(get<_i18.ProductServiceImpl>()));
  gh.factory<_i51.ProductRepo>(
      () => _i52.ProductsRepoImpl(get<_i49.ProductRemoteDataSource>()));
  gh.factory<_i53.ProfileRemoteDatasource>(
      () => _i54.ProfileRemoteDatasourceImpl(get<_i19.ProfileUserService>()));
  gh.singleton<_i55.ProfileRepository>(
      _i56.ProfileRepoImpl(get<_i53.ProfileRemoteDatasource>()));
  gh.factory<_i57.RegisterUseCase>(
      () => _i57.RegisterUseCase(get<_i26.AuthRepository>()));
  gh.factory<_i58.RemoveFromFavorite>(
      () => _i58.RemoveFromFavorite(get<_i36.FavoriteRepository>()));
  gh.factory<_i59.ResetPassUseCase>(
      () => _i59.ResetPassUseCase(get<_i26.AuthRepository>()));
  gh.factory<_i60.UpdateUserUseCase>(
      () => _i60.UpdateUserUseCase(get<_i55.ProfileRepository>()));
  gh.factory<_i61.AddToFavorite>(
      () => _i61.AddToFavorite(get<_i36.FavoriteRepository>()));
  gh.factory<_i62.AuthCubit>(() => _i62.AuthCubit(
      get<_i45.LoginUseCase>(),
      get<_i46.LogoutUseCase>(),
      get<_i57.RegisterUseCase>(),
      get<_i43.GetTokenUseCase>(),
      get<_i59.ResetPassUseCase>()));
  gh.factory<_i63.CartRemoteDataSource>(
      () => _i64.CartRemoteDataSourceImp(get<_i28.CartRemoteService>()));
  gh.factory<_i65.CartRepository>(() => _i66.CartRepositoryImpl(
      get<_i63.CartRemoteDataSource>(), get<_i7.Logger>()));
  gh.factory<_i67.CategoryCubit>(() => _i67.CategoryCubit(
      get<_i38.GetCategoriesUseCase>(), get<_i42.GetProductsByCatIdUseCase>()));
  gh.factory<_i68.ConfirmOrder>(
      () => _i68.ConfirmOrder(get<_i65.CartRepository>()));
  gh.factory<_i69.EditCart>(() => _i69.EditCart(get<_i65.CartRepository>()));
  gh.factory<_i70.FavoritesCubit>(() => _i70.FavoritesCubit(
      get<_i61.AddToFavorite>(),
      get<_i58.RemoveFromFavorite>(),
      get<_i39.GetFavorites>()));
  gh.factory<_i71.GetCart>(() => _i71.GetCart(get<_i65.CartRepository>()));
  gh.factory<_i72.GetProduct>(() => _i72.GetProduct(get<_i51.ProductRepo>()));
  gh.factory<_i73.GetProducts>(() => _i73.GetProducts(get<_i51.ProductRepo>()));
  gh.factory<_i74.GetUserUseCase>(
      () => _i74.GetUserUseCase(get<_i55.ProfileRepository>()));
  gh.factory<_i75.LocalizationRepository>(
      () => _i76.LocalizationRepoImpl(get<_i44.LocalizationService>()));
  gh.factory<_i77.ProductsCubit>(
      () => _i77.ProductsCubit(get<_i73.GetProducts>()));
  gh.factory<_i78.ProfileCubit>(() => _i78.ProfileCubit(
      get<_i74.GetUserUseCase>(), get<_i60.UpdateUserUseCase>()));
  gh.factory<_i79.CartCubit>(() => _i79.CartCubit(get<_i71.GetCart>(),
      get<_i69.EditCart>(), get<_i7.Logger>(), get<_i68.ConfirmOrder>()));
  gh.factory<_i80.ChangeLocaleUseCase>(
      () => _i80.ChangeLocaleUseCase(get<_i75.LocalizationRepository>()));
  gh.factory<_i81.GetLocaleUseCase>(
      () => _i81.GetLocaleUseCase(get<_i75.LocalizationRepository>()));
  gh.factory<_i82.LocaleCubit>(() => _i82.LocaleCubit(
      get<_i81.GetLocaleUseCase>(), get<_i80.ChangeLocaleUseCase>()));
  return get;
}

class _$AppDioInject extends _i83.AppDioInject {}

class _$MyLoggerInject extends _i84.MyLoggerInject {}

class _$InjectionModule extends _i85.InjectionModule {}
