// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i42;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i72;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i71;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i76;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i77;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i78;
import '../core/presentation/cubit/back_button_cubit/back_button_cubit.dart'
    as _i4;
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
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i41;
import '../features/auth/domain/use_case/login_use_case.dart' as _i43;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i44;
import '../features/auth/domain/use_case/register_use_case.dart' as _i53;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i55;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i58;
import '../features/cart/data/data_source/remote/cart_remote_data_source_impl.dart'
    as _i60;
import '../features/cart/data/data_source/remote/cart_remote_service.dart'
    as _i27;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i62;
import '../features/cart/domain/data/data_source/cart_remote_data_source.dart'
    as _i59;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i61;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i64;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i65;
import '../features/cart/domain/use_cases/get_cart.dart' as _i67;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i75;
import '../features/categories/data/data_source/remote/categories_api_service_impl.dart'
    as _i29;
import '../features/categories/data/repository/category_repo_impl.dart' as _i31;
import '../features/categories/domain/data_source/remote/categories_api_service.dart'
    as _i28;
import '../features/categories/domain/repository/category_repository.dart'
    as _i30;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i36;
import '../features/categories/domain/use_case/get_products_by_cat_id_use_case.dart'
    as _i40;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i63;
import '../features/favorites/data/data_source/remote/favorite_remote_service_impl.dart'
    as _i6;
import '../features/favorites/data/data_source/remote/favorites_remote_data_source.dart'
    as _i33;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i35;
import '../features/favorites/domain/data/data_source/favorite_remote_data_source.dart'
    as _i32;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i34;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i57;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i37;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i54;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i66;
import '../features/merchants/data/data_source/remote/merchants_api_service_impl.dart'
    as _i9;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i11;
import '../features/merchants/domain/data_source/remote/merchants_api_service.dart'
    as _i8;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i10;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i38;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i45;
import '../features/orders/data/data_source/remote/orders_api_service_impl.dart'
    as _i13;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i15;
import '../features/orders/domain/data_source/remote/orders_api_service.dart'
    as _i12;
import '../features/orders/domain/repository/order_repository.dart' as _i14;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i39;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i46;
import '../features/products/data/data_source/remote/product_remote_data_source.dart'
    as _i48;
import '../features/products/data/data_source/remote/product_service_impl.dart'
    as _i16;
import '../features/products/data/repository/products_repo_impl.dart' as _i50;
import '../features/products/domain/data_source/product_remote_data_source.dart'
    as _i47;
import '../features/products/domain/repository/product_repo.dart' as _i49;
import '../features/products/domain/use_cases/get_product.dart' as _i68;
import '../features/products/domain/use_cases/get_products.dart' as _i69;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i73;
import '../features/profile/data/data_source/remote/profile_user_service_impl.dart'
    as _i18;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i52;
import '../features/profile/domain/data_source/remote/profile_user_service.dart'
    as _i17;
import '../features/profile/domain/repository/profile_repository.dart' as _i51;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i70;
import '../features/profile/domain/use_case/update_user_use_case.dart' as _i56;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i74;
import 'module/app_interceptor.dart' as _i3;
import 'module/dio.dart' as _i79;
import 'module/logger.dart' as _i80;
import 'module/shared_preferences.dart' as _i81;

const String _test = 'test';
const String _localMock = 'localMock';
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
  gh.factory<_i6.FavoriteRemoteService>(
      () => _i6.FavoriteRemoteServiceImpl(get<_i5.Dio>()),
      registerFor: {_test});
  gh.factory<_i6.FavoriteRemoteService>(() => _i6.FavoriteRemoteServiceLocal(),
      registerFor: {_localMock});
  gh.factory<_i7.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i8.MerchantsApiService>(
      _i9.MerchantsApiServiceImpl(get<_i5.Dio>()));
  gh.factory<_i10.MerchantsRepository>(
      () => _i11.MerchantsRepoImpl(get<_i8.MerchantsApiService>()));
  gh.singleton<_i12.OrdersApiService>(
      _i13.OrdersApiServiceImpl(get<_i5.Dio>()));
  gh.factory<_i14.OrdersRepository>(
      () => _i15.OrdersRepoImpl(get<_i12.OrdersApiService>()));
  gh.factory<_i16.ProductServiceImpl>(
      () => _i16.ProductServiceImpl(get<_i5.Dio>()),
      registerFor: {_localMock});
  gh.singleton<_i17.ProfileUserService>(
      _i18.ProfileUserServiceImpl(get<_i5.Dio>()));
  await gh.factoryAsync<_i19.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i20.AuthApiService>(_i20.AuthApiService(get<_i5.Dio>()));
  gh.singleton<_i21.AuthLocalDatasource>(
      _i22.AuthLocalDatasourceImpl(get<_i19.SharedPreferences>()));
  gh.factory<_i23.AuthRemoteDatasource>(
      () => _i24.AuthRemoteDatasourceImpl(get<_i20.AuthApiService>()));
  gh.factory<_i25.AuthRepository>(() => _i26.AuthRepoImpl(
      get<_i23.AuthRemoteDatasource>(), get<_i21.AuthLocalDatasource>()));
  gh.factory<_i27.CartRemoteService>(
      () => _i27.CartRemoteService(get<_i5.Dio>()));
  gh.singleton<_i28.CategoriesApiService>(
      _i29.CategoriesApiServiceImpl(get<_i5.Dio>()));
  gh.factory<_i30.CategoryRepository>(
      () => _i31.CategoryRepoImpl(get<_i28.CategoriesApiService>()));
  gh.factory<_i32.FavoriteRemoteDataSource>(() =>
      _i33.FavoriteRemoteDataSourceImpl(get<_i6.FavoriteRemoteService>()));
  gh.factory<_i34.FavoriteRepository>(
      () => _i35.FavoriteRepositoryImpl(get<_i32.FavoriteRemoteDataSource>()));
  gh.factory<_i36.GetCategoriesUseCase>(
      () => _i36.GetCategoriesUseCase(get<_i30.CategoryRepository>()));
  gh.factory<_i37.GetFavorites>(
      () => _i37.GetFavorites(get<_i34.FavoriteRepository>()));
  gh.factory<_i38.GetMerchantsUseCase>(
      () => _i38.GetMerchantsUseCase(get<_i10.MerchantsRepository>()));
  gh.factory<_i39.GetOrderUseCase>(
      () => _i39.GetOrderUseCase(get<_i14.OrdersRepository>()));
  gh.factory<_i40.GetProductsByCatIdUseCase>(
      () => _i40.GetProductsByCatIdUseCase(get<_i30.CategoryRepository>()));
  gh.factory<_i41.GetTokenUseCase>(
      () => _i41.GetTokenUseCase(get<_i25.AuthRepository>()));
  gh.singleton<_i42.LocalizationService>(
      _i42.LocaleServiceImpl(get<_i19.SharedPreferences>()));
  gh.factory<_i43.LoginUseCase>(
      () => _i43.LoginUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i44.LogoutUseCase>(
      () => _i44.LogoutUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i45.MerchantsCubit>(
      () => _i45.MerchantsCubit(get<_i38.GetMerchantsUseCase>()));
  gh.factory<_i46.OrdersCubit>(
      () => _i46.OrdersCubit(get<_i39.GetOrderUseCase>()));
  gh.factory<_i47.ProductRemoteDataSource>(
      () => _i48.ProductRemoteDataSourceImpl(get<_i16.ProductServiceImpl>()));
  gh.factory<_i49.ProductRepo>(
      () => _i50.ProductsRepoImpl(get<_i47.ProductRemoteDataSource>()));
  gh.singleton<_i51.ProfileRepository>(
      _i52.ProfileRepoImpl(get<_i17.ProfileUserService>()));
  gh.factory<_i53.RegisterUseCase>(
      () => _i53.RegisterUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i54.RemoveFromFavorite>(
      () => _i54.RemoveFromFavorite(get<_i34.FavoriteRepository>()));
  gh.factory<_i55.ResetPassUseCase>(
      () => _i55.ResetPassUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i56.UpdateUserUseCase>(
      () => _i56.UpdateUserUseCase(get<_i51.ProfileRepository>()));
  gh.factory<_i57.AddToFavorite>(
      () => _i57.AddToFavorite(get<_i34.FavoriteRepository>()));
  gh.factory<_i58.AuthCubit>(() => _i58.AuthCubit(
      get<_i43.LoginUseCase>(),
      get<_i44.LogoutUseCase>(),
      get<_i53.RegisterUseCase>(),
      get<_i41.GetTokenUseCase>(),
      get<_i55.ResetPassUseCase>()));
  gh.factory<_i59.CartRemoteDataSource>(
      () => _i60.CartRemoteDataSourceImp(get<_i27.CartRemoteService>()));
  gh.factory<_i61.CartRepository>(() => _i62.CartRepositoryImpl(
      get<_i59.CartRemoteDataSource>(), get<_i7.Logger>()));
  gh.factory<_i63.CategoryCubit>(() => _i63.CategoryCubit(
      get<_i36.GetCategoriesUseCase>(), get<_i40.GetProductsByCatIdUseCase>()));
  gh.factory<_i64.ConfirmOrder>(
      () => _i64.ConfirmOrder(get<_i61.CartRepository>()));
  gh.factory<_i65.EditCart>(() => _i65.EditCart(get<_i61.CartRepository>()));
  gh.factory<_i66.FavoritesCubit>(() => _i66.FavoritesCubit(
      get<_i57.AddToFavorite>(),
      get<_i54.RemoveFromFavorite>(),
      get<_i37.GetFavorites>()));
  gh.factory<_i67.GetCart>(() => _i67.GetCart(get<_i61.CartRepository>()));
  gh.factory<_i68.GetProduct>(() => _i68.GetProduct(get<_i49.ProductRepo>()));
  gh.factory<_i69.GetProducts>(() => _i69.GetProducts(get<_i49.ProductRepo>()));
  gh.factory<_i70.GetUserUseCase>(
      () => _i70.GetUserUseCase(get<_i51.ProfileRepository>()));
  gh.factory<_i71.LocalizationRepository>(
      () => _i72.LocalizationRepoImpl(get<_i42.LocalizationService>()));
  gh.factory<_i73.ProductsCubit>(
      () => _i73.ProductsCubit(get<_i69.GetProducts>()));
  gh.factory<_i74.ProfileCubit>(() => _i74.ProfileCubit(
      get<_i70.GetUserUseCase>(), get<_i56.UpdateUserUseCase>()));
  gh.factory<_i75.CartCubit>(() => _i75.CartCubit(get<_i67.GetCart>(),
      get<_i65.EditCart>(), get<_i7.Logger>(), get<_i64.ConfirmOrder>()));
  gh.factory<_i76.ChangeLocaleUseCase>(
      () => _i76.ChangeLocaleUseCase(get<_i71.LocalizationRepository>()));
  gh.factory<_i77.GetLocaleUseCase>(
      () => _i77.GetLocaleUseCase(get<_i71.LocalizationRepository>()));
  gh.factory<_i78.LocaleCubit>(() => _i78.LocaleCubit(
      get<_i77.GetLocaleUseCase>(), get<_i76.ChangeLocaleUseCase>()));
  return get;
}

class _$AppDioInject extends _i79.AppDioInject {}

class _$MyLoggerInject extends _i80.MyLoggerInject {}

class _$InjectionModule extends _i81.InjectionModule {}
