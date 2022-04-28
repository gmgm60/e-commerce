// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i43;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i75;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i74;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i79;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i80;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i81;
import '../core/presentation/cubit/back_button_cubit/back_button_cubit.dart'
    as _i3;
import '../features/auth/data/data_source/local/auth_local_datasource_impl.dart'
    as _i22;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i20;
import '../features/auth/data/data_source/remote/auth_remote_datasource_impl.dart'
    as _i24;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i26;
import '../features/auth/domain/data_source/local/auth_local_datasource.dart'
    as _i21;
import '../features/auth/domain/data_source/remote/auth_remote_datasource.dart'
    as _i23;
import '../features/auth/domain/repository/auth_repository.dart' as _i25;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i42;
import '../features/auth/domain/use_case/login_use_case.dart' as _i44;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i45;
import '../features/auth/domain/use_case/register_use_case.dart' as _i56;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i58;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i61;
import '../features/cart/data/data_source/remote/cart_remote_data_source_impl.dart'
    as _i63;
import '../features/cart/data/data_source/remote/cart_remote_service.dart'
    as _i27;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i65;
import '../features/cart/domain/data/data_source/cart_remote_data_source.dart'
    as _i62;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i64;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i67;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i68;
import '../features/cart/domain/use_cases/get_cart.dart' as _i70;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i78;
import '../features/categories/data/data_source/remote/categories_api_service.dart'
    as _i28;
import '../features/categories/data/data_source/remote/categories_remote_datasource_impl.dart'
    as _i30;
import '../features/categories/data/repository/category_repo_impl.dart' as _i32;
import '../features/categories/domain/data_source/remote/categories_remote_datasource.dart'
    as _i29;
import '../features/categories/domain/repository/category_repository.dart'
    as _i31;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i37;
import '../features/categories/domain/use_case/get_products_by_cat_id_use_case.dart'
    as _i41;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i66;
import '../features/favorites/data/data_source/remote/favorite_remote_service_impl.dart'
    as _i5;
import '../features/favorites/data/data_source/remote/favorites_remote_data_source.dart'
    as _i34;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i36;
import '../features/favorites/domain/data/data_source/favorite_remote_data_source.dart'
    as _i33;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i35;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i60;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i38;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i57;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i69;
import '../features/merchants/data/data_source/remote/merchants_api_service.dart'
    as _i7;
import '../features/merchants/data/data_source/remote/merchants_remote_datasource_impl.dart'
    as _i9;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i11;
import '../features/merchants/domain/data_source/remote/merchants_remote_datasource.dart'
    as _i8;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i10;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i39;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i46;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i12;
import '../features/orders/data/data_source/remote/orders_remote_datasource_impl.dart'
    as _i14;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i16;
import '../features/orders/domain/data_source/remote/orders_remote_datasource.dart'
    as _i13;
import '../features/orders/domain/repository/order_repository.dart' as _i15;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i40;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i47;
import '../features/products/data/data_source/remote/product_remote_data_source.dart'
    as _i49;
import '../features/products/data/data_source/remote/product_service_impl.dart'
    as _i17;
import '../features/products/data/repository/products_repo_impl.dart' as _i51;
import '../features/products/domain/data_source/product_remote_data_source.dart'
    as _i48;
import '../features/products/domain/repository/product_repo.dart' as _i50;
import '../features/products/domain/use_cases/get_product.dart' as _i71;
import '../features/products/domain/use_cases/get_products.dart' as _i72;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i76;
import '../features/profile/data/data_source/remote/profile_remote_datasource_impl.dart'
    as _i53;
import '../features/profile/data/data_source/remote/profile_user_service.dart'
    as _i18;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i55;
import '../features/profile/domain/data_source/remote/profile_remote_datasource.dart'
    as _i52;
import '../features/profile/domain/repository/profile_repository.dart' as _i54;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i73;
import '../features/profile/domain/use_case/update_user_use_case.dart' as _i59;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i77;
import 'module/dio.dart' as _i82;
import 'module/logger.dart' as _i83;
import 'module/shared_preferences.dart' as _i84;

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
  gh.factory<_i3.BackButtonCubit>(() => _i3.BackButtonCubit());
  gh.factory<_i4.Dio>(() => appDioInject.dio);
  gh.factory<_i5.FavoriteRemoteService>(() => _i5.FavoriteRemoteServiceLocal(),
      registerFor: {_localMock});
  gh.factory<_i5.FavoriteRemoteService>(
      () => _i5.FavoriteRemoteServiceImpl(get<_i4.Dio>()),
      registerFor: {_test});
  gh.factory<_i6.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i7.MerchantsApiService>(
      _i7.MerchantsApiService(get<_i4.Dio>()));
  gh.factory<_i8.MerchantsRemoteDatasource>(
      () => _i9.MerchantsRemoteDatasourceImpl(get<_i7.MerchantsApiService>()));
  gh.factory<_i10.MerchantsRepository>(
      () => _i11.MerchantsRepoImpl(get<_i8.MerchantsRemoteDatasource>()));
  gh.singleton<_i12.OrdersApiService>(_i12.OrdersApiService(get<_i4.Dio>()));
  gh.factory<_i13.OrdersRemoteDatasource>(
      () => _i14.OrdersRemoteDatasourceImpl(get<_i12.OrdersApiService>()));
  gh.factory<_i15.OrdersRepository>(
      () => _i16.OrdersRepoImpl(get<_i13.OrdersRemoteDatasource>()));
  gh.factory<_i17.ProductServiceImpl>(
      () => _i17.ProductServiceImpl(get<_i4.Dio>()),
      registerFor: {_localMock});
  gh.singleton<_i18.ProfileUserService>(
      _i18.ProfileUserService(get<_i4.Dio>()));
  await gh.factoryAsync<_i19.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i20.AuthApiService>(_i20.AuthApiService(get<_i4.Dio>()));
  gh.singleton<_i21.AuthLocalDatasource>(
      _i22.AuthLocalDatasourceImpl(get<_i19.SharedPreferences>()));
  gh.factory<_i23.AuthRemoteDatasource>(
      () => _i24.AuthRemoteDatasourceImpl(get<_i20.AuthApiService>()));
  gh.factory<_i25.AuthRepository>(() => _i26.AuthRepoImpl(
      get<_i23.AuthRemoteDatasource>(), get<_i21.AuthLocalDatasource>()));
  gh.factory<_i27.CartRemoteService>(
      () => _i27.CartRemoteService(get<_i4.Dio>()));
  gh.singleton<_i28.CategoriesApiService>(
      _i28.CategoriesApiService(get<_i4.Dio>()));
  gh.factory<_i29.CategoriesRemoteDatasource>(() =>
      _i30.CategoriesRemoteDatasourceImpl(get<_i28.CategoriesApiService>()));
  gh.factory<_i31.CategoryRepository>(
      () => _i32.CategoryRepoImpl(get<_i29.CategoriesRemoteDatasource>()));
  gh.factory<_i33.FavoriteRemoteDataSource>(() =>
      _i34.FavoriteRemoteDataSourceImpl(get<_i5.FavoriteRemoteService>()));
  gh.factory<_i35.FavoriteRepository>(
      () => _i36.FavoriteRepositoryImpl(get<_i33.FavoriteRemoteDataSource>()));
  gh.factory<_i37.GetCategoriesUseCase>(
      () => _i37.GetCategoriesUseCase(get<_i31.CategoryRepository>()));
  gh.factory<_i38.GetFavorites>(
      () => _i38.GetFavorites(get<_i35.FavoriteRepository>()));
  gh.factory<_i39.GetMerchantsUseCase>(
      () => _i39.GetMerchantsUseCase(get<_i10.MerchantsRepository>()));
  gh.factory<_i40.GetOrderUseCase>(
      () => _i40.GetOrderUseCase(get<_i15.OrdersRepository>()));
  gh.factory<_i41.GetProductsByCatIdUseCase>(
      () => _i41.GetProductsByCatIdUseCase(get<_i31.CategoryRepository>()));
  gh.factory<_i42.GetTokenUseCase>(
      () => _i42.GetTokenUseCase(get<_i25.AuthRepository>()));
  gh.singleton<_i43.LocalizationService>(
      _i43.LocaleServiceImpl(get<_i19.SharedPreferences>()));
  gh.factory<_i44.LoginUseCase>(
      () => _i44.LoginUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i45.LogoutUseCase>(
      () => _i45.LogoutUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i46.MerchantsCubit>(
      () => _i46.MerchantsCubit(get<_i39.GetMerchantsUseCase>()));
  gh.factory<_i47.OrdersCubit>(
      () => _i47.OrdersCubit(get<_i40.GetOrderUseCase>()));
  gh.factory<_i48.ProductRemoteDataSource>(
      () => _i49.ProductRemoteDataSourceImpl(get<_i17.ProductServiceImpl>()));
  gh.factory<_i50.ProductRepo>(
      () => _i51.ProductsRepoImpl(get<_i48.ProductRemoteDataSource>()));
  gh.factory<_i52.ProfileRemoteDatasource>(
      () => _i53.ProfileRemoteDatasourceImpl(get<_i18.ProfileUserService>()));
  gh.singleton<_i54.ProfileRepository>(
      _i55.ProfileRepoImpl(get<_i52.ProfileRemoteDatasource>()));
  gh.factory<_i56.RegisterUseCase>(
      () => _i56.RegisterUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i57.RemoveFromFavorite>(
      () => _i57.RemoveFromFavorite(get<_i35.FavoriteRepository>()));
  gh.factory<_i58.ResetPassUseCase>(
      () => _i58.ResetPassUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i59.UpdateUserUseCase>(
      () => _i59.UpdateUserUseCase(get<_i54.ProfileRepository>()));
  gh.factory<_i60.AddToFavorite>(
      () => _i60.AddToFavorite(get<_i35.FavoriteRepository>()));
  gh.factory<_i61.AuthCubit>(() => _i61.AuthCubit(
      get<_i44.LoginUseCase>(),
      get<_i45.LogoutUseCase>(),
      get<_i56.RegisterUseCase>(),
      get<_i42.GetTokenUseCase>(),
      get<_i58.ResetPassUseCase>()));
  gh.factory<_i62.CartRemoteDataSource>(
      () => _i63.CartRemoteDataSourceImp(get<_i27.CartRemoteService>()));
  gh.factory<_i64.CartRepository>(() => _i65.CartRepositoryImpl(
      get<_i62.CartRemoteDataSource>(), get<_i6.Logger>()));
  gh.factory<_i66.CategoryCubit>(() => _i66.CategoryCubit(
      get<_i37.GetCategoriesUseCase>(), get<_i41.GetProductsByCatIdUseCase>()));
  gh.factory<_i67.ConfirmOrder>(
      () => _i67.ConfirmOrder(get<_i64.CartRepository>()));
  gh.factory<_i68.EditCart>(() => _i68.EditCart(get<_i64.CartRepository>()));
  gh.factory<_i69.FavoritesCubit>(() => _i69.FavoritesCubit(
      get<_i60.AddToFavorite>(),
      get<_i57.RemoveFromFavorite>(),
      get<_i38.GetFavorites>()));
  gh.factory<_i70.GetCart>(() => _i70.GetCart(get<_i64.CartRepository>()));
  gh.factory<_i71.GetProduct>(() => _i71.GetProduct(get<_i50.ProductRepo>()));
  gh.factory<_i72.GetProducts>(() => _i72.GetProducts(get<_i50.ProductRepo>()));
  gh.factory<_i73.GetUserUseCase>(
      () => _i73.GetUserUseCase(get<_i54.ProfileRepository>()));
  gh.factory<_i74.LocalizationRepository>(
      () => _i75.LocalizationRepoImpl(get<_i43.LocalizationService>()));
  gh.factory<_i76.ProductsCubit>(
      () => _i76.ProductsCubit(get<_i72.GetProducts>()));
  gh.factory<_i77.ProfileCubit>(() => _i77.ProfileCubit(
      get<_i73.GetUserUseCase>(), get<_i59.UpdateUserUseCase>()));
  gh.factory<_i78.CartCubit>(() => _i78.CartCubit(get<_i70.GetCart>(),
      get<_i68.EditCart>(), get<_i6.Logger>(), get<_i67.ConfirmOrder>()));
  gh.factory<_i79.ChangeLocaleUseCase>(
      () => _i79.ChangeLocaleUseCase(get<_i74.LocalizationRepository>()));
  gh.factory<_i80.GetLocaleUseCase>(
      () => _i80.GetLocaleUseCase(get<_i74.LocalizationRepository>()));
  gh.factory<_i81.LocaleCubit>(() => _i81.LocaleCubit(
      get<_i80.GetLocaleUseCase>(), get<_i79.ChangeLocaleUseCase>()));
  return get;
}

class _$AppDioInject extends _i82.AppDioInject {}

class _$MyLoggerInject extends _i83.MyLoggerInject {}

class _$InjectionModule extends _i84.InjectionModule {}
