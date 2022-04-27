// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import '../core/features/locale/data/data_source/local/localization_service.dart'
    as _i49;
import '../core/features/locale/data/repository/localization_repo_impl.dart'
    as _i70;
import '../core/features/locale/domain/repository/localization_repository.dart'
    as _i69;
import '../core/features/locale/domain/use_case/change_locale_use_case.dart'
    as _i73;
import '../core/features/locale/domain/use_case/get_locale_use_case.dart'
    as _i74;
import '../core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i75;
import '../core/presentation/cubit/back_button_cubit/back_button_cubit.dart'
    as _i4;
import '../features/auth/data/data_source/local/auth_local_datasource_impl.dart'
    as _i24;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i22;
import '../features/auth/data/data_source/remote/auth_remote_datasource_impl.dart'
    as _i26;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i28;
import '../features/auth/domain/data_source/local/auth_local_datasource.dart'
    as _i23;
import '../features/auth/domain/data_source/remote/auth_remote_datasource.dart'
    as _i25;
import '../features/auth/domain/repository/auth_repository.dart' as _i27;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i48;
import '../features/auth/domain/use_case/login_use_case.dart' as _i50;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i51;
import '../features/auth/domain/use_case/register_use_case.dart' as _i58;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i60;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i63;
import '../features/cart/data/repository/cart_repository_impl.dart' as _i32;
import '../features/cart/data/service/remote/cart_remote_service_impl.dart'
    as _i30;
import '../features/cart/domain/data/repository/cart_repository.dart' as _i31;
import '../features/cart/domain/data/service/cart_remote_service.dart' as _i29;
import '../features/cart/domain/data/service/cart_rest_api.dart' as _i33;
import '../features/cart/domain/use_cases/confirm_order.dart' as _i38;
import '../features/cart/domain/use_cases/edit_cart.dart' as _i39;
import '../features/cart/domain/use_cases/get_cart.dart' as _i42;
import '../features/cart/presentation/cubit/cart_cubit/cart_cubit.dart' as _i64;
import '../features/categories/data/data_source/remote/categories_api_service_impl.dart'
    as _i35;
import '../features/categories/data/repository/category_repo_impl.dart' as _i37;
import '../features/categories/domain/data_source/remote/categories_api_service.dart'
    as _i34;
import '../features/categories/domain/repository/category_repository.dart'
    as _i36;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i43;
import '../features/categories/domain/use_case/get_products_by_cat_id_use_case.dart'
    as _i47;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i65;
import '../features/favorites/data/data_source/remote/favorite_remote_service_impl.dart'
    as _i7;
import '../features/favorites/data/repository/favorite_repository_impl.dart'
    as _i41;
import '../features/favorites/domain/data/data_source/favorite_remote_source.dart'
    as _i6;
import '../features/favorites/domain/data/repository/favorite_repository.dart'
    as _i40;
import '../features/favorites/domain/use_cases/add_to_favorite.dart' as _i62;
import '../features/favorites/domain/use_cases/get_favorites.dart' as _i44;
import '../features/favorites/domain/use_cases/remove_from_favorite.dart'
    as _i59;
import '../features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart'
    as _i66;
import '../features/merchants/data/data_source/remote/merchants_api_service_impl.dart'
    as _i10;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i12;
import '../features/merchants/domain/data_source/remote/merchants_api_service.dart'
    as _i9;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i11;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i45;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i52;
import '../features/orders/data/data_source/remote/orders_api_service_impl.dart'
    as _i14;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i16;
import '../features/orders/domain/data_source/remote/orders_api_service.dart'
    as _i13;
import '../features/orders/domain/repository/order_repository.dart' as _i15;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i46;
import '../features/orders/presentation/bloc/orders_cubit/orders_cubit.dart'
    as _i53;
import '../features/products/data/repository/products_repo_impl.dart' as _i55;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i18;
import '../features/products/domain/repository/product_repo.dart' as _i54;
import '../features/products/domain/service/product_service.dart' as _i17;
import '../features/products/domain/use_cases/get_products.dart' as _i67;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i71;
import '../features/profile/data/data_source/remote/profile_user_service_impl.dart'
    as _i20;
import '../features/profile/data/repository/profile_repo_impl.dart' as _i57;
import '../features/profile/domain/data_source/remote/profile_user_service.dart'
    as _i19;
import '../features/profile/domain/repository/profile_repository.dart' as _i56;
import '../features/profile/domain/use_case/get_user_use_case.dart' as _i68;
import '../features/profile/domain/use_case/update_user_use_case.dart' as _i61;
import '../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i72;
import 'module/app_interceptor.dart' as _i3;
import 'module/dio.dart' as _i76;
import 'module/logger.dart' as _i77;
import 'module/shared_preferences.dart' as _i78;

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
  gh.factory<_i6.FavoriteRemoteSource>(() => _i7.FavoriteRemoteServiceLocal(),
      registerFor: {_localMock});
  gh.factory<_i6.FavoriteRemoteSource>(
      () => _i7.FavoriteRemoteServiceImpl(get<_i5.Dio>()),
      registerFor: {_test});
  gh.factory<_i8.Logger>(() => myLoggerInject.logger);
  gh.singleton<_i9.MerchantsApiService>(
      _i10.MerchantsApiServiceImpl(get<_i5.Dio>()));
  gh.factory<_i11.MerchantsRepository>(
      () => _i12.MerchantsRepoImpl(get<_i9.MerchantsApiService>()));
  gh.singleton<_i13.OrdersApiService>(
      _i14.OrdersApiServiceImpl(get<_i5.Dio>()));
  gh.factory<_i15.OrdersRepository>(
      () => _i16.OrdersRepoImpl(get<_i13.OrdersApiService>()));
  gh.factory<_i17.ProductService>(() => _i18.ProductServiceImplLocal(),
      registerFor: {_localMock});
  gh.factory<_i17.ProductService>(() => _i18.ProductServiceImpl(get<_i5.Dio>()),
      registerFor: {_test});
  gh.singleton<_i19.ProfileUserService>(
      _i20.ProfileUserServiceImpl(get<_i5.Dio>()));
  await gh.factoryAsync<_i21.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i22.AuthApiService>(_i22.AuthApiService(get<_i5.Dio>()));
  gh.singleton<_i23.AuthLocalDatasource>(
      _i24.AuthLocalDatasourceImpl(get<_i21.SharedPreferences>()));
  gh.factory<_i25.AuthRemoteDatasource>(
      () => _i26.AuthRemoteDatasourceImpl(get<_i22.AuthApiService>()));
  gh.factory<_i27.AuthRepository>(() => _i28.AuthRepoImpl(
      get<_i25.AuthRemoteDatasource>(), get<_i23.AuthLocalDatasource>()));
  gh.factory<_i29.CartRemoteService>(
      () => _i30.CartRemoteServiceImpl(get<_i5.Dio>()));
  gh.factory<_i31.CartRepository>(() => _i32.CartRepositoryImpl(
      get<_i29.CartRemoteService>(),
      get<_i8.Logger>(),
      get<_i23.AuthLocalDatasource>()));
  gh.factory<_i33.CartRestApiImpl>(() => _i33.CartRestApiImpl(get<_i5.Dio>()));
  gh.singleton<_i34.CategoriesApiService>(
      _i35.CategoriesApiServiceImpl(get<_i5.Dio>()));
  gh.factory<_i36.CategoryRepository>(
      () => _i37.CategoryRepoImpl(get<_i34.CategoriesApiService>()));
  gh.factory<_i38.ConfirmOrder>(
      () => _i38.ConfirmOrder(get<_i31.CartRepository>()));
  gh.factory<_i39.EditCart>(() => _i39.EditCart(get<_i31.CartRepository>()));
  gh.factory<_i40.FavoriteRepository>(() => _i41.FavoriteRepositoryImpl(
      get<_i6.FavoriteRemoteSource>(), get<_i23.AuthLocalDatasource>()));
  gh.factory<_i42.GetCart>(() => _i42.GetCart(get<_i31.CartRepository>()));
  gh.factory<_i43.GetCategoriesUseCase>(
      () => _i43.GetCategoriesUseCase(get<_i36.CategoryRepository>()));
  gh.factory<_i44.GetFavorites>(
      () => _i44.GetFavorites(get<_i40.FavoriteRepository>()));
  gh.factory<_i45.GetMerchantsUseCase>(
      () => _i45.GetMerchantsUseCase(get<_i11.MerchantsRepository>()));
  gh.factory<_i46.GetOrderUseCase>(
      () => _i46.GetOrderUseCase(get<_i15.OrdersRepository>()));
  gh.factory<_i47.GetProductsByCatIdUseCase>(
      () => _i47.GetProductsByCatIdUseCase(get<_i36.CategoryRepository>()));
  gh.factory<_i48.GetTokenUseCase>(
      () => _i48.GetTokenUseCase(get<_i27.AuthRepository>()));
  gh.singleton<_i49.LocalizationService>(
      _i49.LocaleServiceImpl(get<_i21.SharedPreferences>()));
  gh.factory<_i50.LoginUseCase>(
      () => _i50.LoginUseCase(get<_i27.AuthRepository>()));
  gh.factory<_i51.LogoutUseCase>(
      () => _i51.LogoutUseCase(get<_i27.AuthRepository>()));
  gh.factory<_i52.MerchantsCubit>(
      () => _i52.MerchantsCubit(get<_i45.GetMerchantsUseCase>()));
  gh.factory<_i53.OrdersCubit>(
      () => _i53.OrdersCubit(get<_i46.GetOrderUseCase>()));
  gh.factory<_i54.ProductRepo>(() => _i55.ProductsRepoImpl(
      get<_i17.ProductService>(), get<_i23.AuthLocalDatasource>()));
  gh.singleton<_i56.ProfileRepository>(
      _i57.ProfileRepoImpl(get<_i19.ProfileUserService>()));
  gh.factory<_i58.RegisterUseCase>(
      () => _i58.RegisterUseCase(get<_i27.AuthRepository>()));
  gh.factory<_i59.RemoveFromFavorite>(
      () => _i59.RemoveFromFavorite(get<_i40.FavoriteRepository>()));
  gh.factory<_i60.ResetPassUseCase>(
      () => _i60.ResetPassUseCase(get<_i27.AuthRepository>()));
  gh.factory<_i61.UpdateUserUseCase>(
      () => _i61.UpdateUserUseCase(get<_i56.ProfileRepository>()));
  gh.factory<_i62.AddToFavorite>(
      () => _i62.AddToFavorite(get<_i40.FavoriteRepository>()));
  gh.factory<_i63.AuthCubit>(() => _i63.AuthCubit(
      get<_i50.LoginUseCase>(),
      get<_i51.LogoutUseCase>(),
      get<_i58.RegisterUseCase>(),
      get<_i48.GetTokenUseCase>(),
      get<_i60.ResetPassUseCase>()));
  gh.factory<_i64.CartCubit>(() => _i64.CartCubit(get<_i42.GetCart>(),
      get<_i39.EditCart>(), get<_i8.Logger>(), get<_i38.ConfirmOrder>()));
  gh.factory<_i65.CategoryCubit>(() => _i65.CategoryCubit(
      get<_i43.GetCategoriesUseCase>(), get<_i47.GetProductsByCatIdUseCase>()));
  gh.factory<_i66.FavoritesCubit>(() => _i66.FavoritesCubit(
      get<_i62.AddToFavorite>(),
      get<_i59.RemoveFromFavorite>(),
      get<_i44.GetFavorites>()));
  gh.factory<_i67.GetProducts>(() => _i67.GetProducts(get<_i54.ProductRepo>()));
  gh.factory<_i68.GetUserUseCase>(
      () => _i68.GetUserUseCase(get<_i56.ProfileRepository>()));
  gh.factory<_i69.LocalizationRepository>(
      () => _i70.LocalizationRepoImpl(get<_i49.LocalizationService>()));
  gh.factory<_i71.ProductsCubit>(
      () => _i71.ProductsCubit(get<_i67.GetProducts>()));
  gh.factory<_i72.ProfileCubit>(() => _i72.ProfileCubit(
      get<_i68.GetUserUseCase>(), get<_i61.UpdateUserUseCase>()));
  gh.factory<_i73.ChangeLocaleUseCase>(
      () => _i73.ChangeLocaleUseCase(get<_i69.LocalizationRepository>()));
  gh.factory<_i74.GetLocaleUseCase>(
      () => _i74.GetLocaleUseCase(get<_i69.LocalizationRepository>()));
  gh.factory<_i75.LocaleCubit>(() => _i75.LocaleCubit(
      get<_i74.GetLocaleUseCase>(), get<_i73.ChangeLocaleUseCase>()));
  return get;
}

class _$AppDioInject extends _i76.AppDioInject {}

class _$MyLoggerInject extends _i77.MyLoggerInject {}

class _$InjectionModule extends _i78.InjectionModule {}
