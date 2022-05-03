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
    as _i45;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i77;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i76;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i81;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i82;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i83;
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
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i44;
import '../features/auth/domain/use_case/login_use_case.dart' as _i46;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i47;
import '../features/auth/domain/use_case/register_use_case.dart' as _i58;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i60;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i63;
import '../features/cart/data/data_source/remote/cart_remote_data_source_impl.dart'
    as _i65;
import '../features/cart/data/data_source/remote/cart_remote_service.dart'
    as _i27;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i67;
import '../features/cart/domain/data/data_source/cart_remote_data_source.dart'
    as _i64;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i66;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i69;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i70;
import '../features/cart/domain/use_cases/get_cart.dart' as _i72;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i80;
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
    as _i39;
import '../features/categories/domain/use_case/get_products_by_cat_id_use_case.dart'
    as _i43;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i68;
import '../features/favorites/data/data_source/local/favorite_local_data_source.dart'
    as _i34;
import '../features/favorites/data/data_source/remote/favorite_remote_service_impl.dart'
    as _i5;
import '../features/favorites/data/data_source/remote/favorites_remote_data_source.dart'
    as _i36;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i38;
import '../features/favorites/domain/data/data_source/favorite_local_data_source.dart'
    as _i33;
import '../features/favorites/domain/data/data_source/favorite_remote_data_source.dart'
    as _i35;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i37;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i62;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i40;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i59;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i71;
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
    as _i41;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i48;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i12;
import '../features/orders/data/data_source/remote/orders_remote_datasource_impl.dart'
    as _i14;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i16;
import '../features/orders/domain/data_source/remote/orders_remote_datasource.dart'
    as _i13;
import '../features/orders/domain/repository/order_repository.dart' as _i15;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i42;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i49;
import '../features/products/data/data_source/remote/product_remote_data_source.dart'
    as _i51;
import '../features/products/data/data_source/remote/product_service_impl.dart'
    as _i17;
import '../features/products/data/repository/products_repo_impl.dart' as _i53;
import '../features/products/domain/data_source/product_remote_data_source.dart'
    as _i50;
import '../features/products/domain/repository/product_repo.dart' as _i52;
import '../features/products/domain/use_cases/get_product.dart' as _i73;
import '../features/products/domain/use_cases/get_products.dart' as _i74;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i78;
import '../features/profile/data/data_source/remote/profile_remote_datasource_impl.dart'
    as _i55;
import '../features/profile/data/data_source/remote/profile_user_service.dart'
    as _i18;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i57;
import '../features/profile/domain/data_source/remote/profile_remote_datasource.dart'
    as _i54;
import '../features/profile/domain/repository/profile_repository.dart' as _i56;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i75;
import '../features/profile/domain/use_case/update_user_use_case.dart' as _i61;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i79;
import 'module/dio.dart' as _i84;
import 'module/logger.dart' as _i85;
import 'module/shared_preferences.dart'
    as _i86; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i5.FavoriteRemoteService>(
      () => _i5.FavoriteRemoteService(get<_i4.Dio>()));
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
      () => _i17.ProductServiceImpl(get<_i4.Dio>()));
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
  gh.factory<_i33.FavoriteLocalDataSource>(
      () => _i34.FavoriteLocalDataSourceImpl(get<_i19.SharedPreferences>()));
  gh.factory<_i35.FavoriteRemoteDataSource>(() =>
      _i36.FavoriteRemoteDataSourceImpl(get<_i5.FavoriteRemoteService>()));
  gh.factory<_i37.FavoriteRepository>(() => _i38.FavoriteRepositoryImpl(
      get<_i35.FavoriteRemoteDataSource>(),
      get<_i33.FavoriteLocalDataSource>()));
  gh.factory<_i39.GetCategoriesUseCase>(
      () => _i39.GetCategoriesUseCase(get<_i31.CategoryRepository>()));
  gh.factory<_i40.GetFavorites>(
      () => _i40.GetFavorites(get<_i37.FavoriteRepository>()));
  gh.factory<_i41.GetMerchantsUseCase>(
      () => _i41.GetMerchantsUseCase(get<_i10.MerchantsRepository>()));
  gh.factory<_i42.GetOrderUseCase>(
      () => _i42.GetOrderUseCase(get<_i15.OrdersRepository>()));
  gh.factory<_i43.GetProductsByCatIdUseCase>(
      () => _i43.GetProductsByCatIdUseCase(get<_i31.CategoryRepository>()));
  gh.factory<_i44.GetTokenUseCase>(
      () => _i44.GetTokenUseCase(get<_i25.AuthRepository>()));
  gh.singleton<_i45.LocalizationService>(
      _i45.LocaleServiceImpl(get<_i19.SharedPreferences>()));
  gh.factory<_i46.LoginUseCase>(
      () => _i46.LoginUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i47.LogoutUseCase>(
      () => _i47.LogoutUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i48.MerchantsCubit>(
      () => _i48.MerchantsCubit(get<_i41.GetMerchantsUseCase>()));
  gh.factory<_i49.OrdersCubit>(
      () => _i49.OrdersCubit(get<_i42.GetOrderUseCase>()));
  gh.factory<_i50.ProductRemoteDataSource>(
      () => _i51.ProductRemoteDataSourceImpl(get<_i17.ProductServiceImpl>()));
  gh.factory<_i52.ProductRepo>(
      () => _i53.ProductsRepoImpl(get<_i50.ProductRemoteDataSource>()));
  gh.factory<_i54.ProfileRemoteDatasource>(
      () => _i55.ProfileRemoteDatasourceImpl(get<_i18.ProfileUserService>()));
  gh.singleton<_i56.ProfileRepository>(
      _i57.ProfileRepoImpl(get<_i54.ProfileRemoteDatasource>()));
  gh.factory<_i58.RegisterUseCase>(
      () => _i58.RegisterUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i59.RemoveFromFavorite>(
      () => _i59.RemoveFromFavorite(get<_i37.FavoriteRepository>()));
  gh.factory<_i60.ResetPassUseCase>(
      () => _i60.ResetPassUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i61.UpdateUserUseCase>(
      () => _i61.UpdateUserUseCase(get<_i56.ProfileRepository>()));
  gh.factory<_i62.AddToFavorite>(
      () => _i62.AddToFavorite(get<_i37.FavoriteRepository>()));
  gh.factory<_i63.AuthCubit>(() => _i63.AuthCubit(
      get<_i46.LoginUseCase>(),
      get<_i47.LogoutUseCase>(),
      get<_i58.RegisterUseCase>(),
      get<_i44.GetTokenUseCase>(),
      get<_i60.ResetPassUseCase>()));
  gh.factory<_i64.CartRemoteDataSource>(
      () => _i65.CartRemoteDataSourceImp(get<_i27.CartRemoteService>()));
  gh.factory<_i66.CartRepository>(() => _i67.CartRepositoryImpl(
      get<_i64.CartRemoteDataSource>(), get<_i6.Logger>()));
  gh.factory<_i68.CategoryCubit>(() => _i68.CategoryCubit(
      get<_i39.GetCategoriesUseCase>(), get<_i43.GetProductsByCatIdUseCase>()));
  gh.factory<_i69.ConfirmOrder>(
      () => _i69.ConfirmOrder(get<_i66.CartRepository>()));
  gh.factory<_i70.EditCart>(() => _i70.EditCart(get<_i66.CartRepository>()));
  gh.factory<_i71.FavoritesCubit>(() => _i71.FavoritesCubit(
      get<_i62.AddToFavorite>(),
      get<_i59.RemoveFromFavorite>(),
      get<_i40.GetFavorites>()));
  gh.factory<_i72.GetCart>(() => _i72.GetCart(get<_i66.CartRepository>()));
  gh.factory<_i73.GetProduct>(() => _i73.GetProduct(get<_i52.ProductRepo>()));
  gh.factory<_i74.GetProducts>(() => _i74.GetProducts(get<_i52.ProductRepo>()));
  gh.factory<_i75.GetUserUseCase>(
      () => _i75.GetUserUseCase(get<_i56.ProfileRepository>()));
  gh.factory<_i76.LocalizationRepository>(
      () => _i77.LocalizationRepoImpl(get<_i45.LocalizationService>()));
  gh.factory<_i78.ProductsCubit>(() =>
      _i78.ProductsCubit(get<_i74.GetProducts>(), get<_i73.GetProduct>()));
  gh.factory<_i79.ProfileCubit>(() => _i79.ProfileCubit(
      get<_i75.GetUserUseCase>(), get<_i61.UpdateUserUseCase>()));
  gh.factory<_i80.CartCubit>(() => _i80.CartCubit(get<_i72.GetCart>(),
      get<_i70.EditCart>(), get<_i6.Logger>(), get<_i69.ConfirmOrder>()));
  gh.factory<_i81.ChangeLocaleUseCase>(
      () => _i81.ChangeLocaleUseCase(get<_i76.LocalizationRepository>()));
  gh.factory<_i82.GetLocaleUseCase>(
      () => _i82.GetLocaleUseCase(get<_i76.LocalizationRepository>()));
  gh.factory<_i83.LocaleCubit>(() => _i83.LocaleCubit(
      get<_i82.GetLocaleUseCase>(), get<_i81.ChangeLocaleUseCase>()));
  return get;
}

class _$AppDioInject extends _i84.AppDioInject {}

class _$MyLoggerInject extends _i85.MyLoggerInject {}

class _$InjectionModule extends _i86.InjectionModule {}
