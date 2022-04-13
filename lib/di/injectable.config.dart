// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../core/presentation/bloc/locale_cubit/locale_cubit.dart' as _i4;
import '../features/auth/data/data_source/local/auth_local_service.dart'
    as _i10;
import '../features/auth/data/data_source/remote/auth_api_service.dart' as _i9;
import '../features/auth/data/repository/auth_repo_impl.dart' as _i12;
import '../features/auth/domain/repository/auth_repository.dart' as _i11;
import '../features/auth/domain/use_case/get_token_use_case.dart' as _i17;
import '../features/auth/domain/use_case/login_use_case.dart' as _i18;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i19;
import '../features/auth/domain/use_case/register_use_case.dart' as _i26;
import '../features/auth/domain/use_case/reset_pass_use_case.dart' as _i27;
import '../features/auth/presentation/bloc/auth_cubit/auth_cubit.dart' as _i28;
import '../features/categories/data/data_source/remote/categories_api_service.dart'
    as _i13;
import '../features/categories/data/repository/category_repo_impl.dart' as _i15;
import '../features/categories/domain/repository/category_repository.dart'
    as _i14;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i16;
import '../features/categories/presentation/bloc/category_cubit/category_cubit.dart'
    as _i29;
import '../features/merchants/data/data_source/remote/merchants_api_service.dart'
    as _i5;
import '../features/merchants/data/repository/merchants_repo_impl.dart' as _i21;
import '../features/merchants/domain/repository/merchants_repository.dart'
    as _i20;
import '../features/merchants/domain/use_case/get_merchants_use_case.dart'
    as _i30;
import '../features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart'
    as _i32;
import '../features/orders/data/data_source/remote/orders_api_service.dart'
    as _i6;
import '../features/orders/data/repository/orders_repo_impl.dart' as _i23;
import '../features/orders/domain/repository/order_repository.dart' as _i22;
import '../features/orders/domain/use_case/get_order_use_case.dart' as _i31;
import '../features/products/data/repository/products_repo_impl.dart' as _i34;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i25;
import '../features/products/data/service/remote/rest_api.dart' as _i7;
import '../features/products/domain/repository/product_repo.dart' as _i33;
import '../features/products/domain/service/product_service.dart' as _i24;
import '../features/products/domain/use_cases/get_products.dart' as _i35;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i36;
import 'module/dio.dart' as _i37;
import 'module/shared_preferences.dart'
    as _i38; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.factory<_i4.LocaleCubit>(() => _i4.LocaleCubit());
  gh.singleton<_i5.MerchantsApiService>(
      _i5.MerchantsApiService(get<_i3.Dio>()));
  gh.singleton<_i6.OrdersApiService>(_i6.OrdersApiService(get<_i3.Dio>()));
  gh.factory<_i7.RestApiImpl>(() => _i7.RestApiImpl(get<_i3.Dio>()));
  await gh.factoryAsync<_i8.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i9.AuthApiService>(_i9.AuthApiService(get<_i3.Dio>()));
  gh.singleton<_i10.AuthLocalService>(
      _i10.AuthLocalServiceImpl(get<_i8.SharedPreferences>()));
  gh.factory<_i11.AuthRepository>(() => _i12.AuthRepoImpl(
      get<_i9.AuthApiService>(), get<_i10.AuthLocalService>()));
  gh.singleton<_i13.CategoriesApiService>(
      _i13.CategoriesApiService(get<_i3.Dio>()));
  gh.factory<_i14.CategoryRepository>(() => _i15.CategoryRepoImpl(
      get<_i13.CategoriesApiService>(), get<_i10.AuthLocalService>()));
  gh.factory<_i16.GetCategoriesUseCase>(
      () => _i16.GetCategoriesUseCase(get<_i14.CategoryRepository>()));
  gh.factory<_i17.GetTokenUseCase>(
      () => _i17.GetTokenUseCase(get<_i11.AuthRepository>()));
  gh.factory<_i18.LoginUseCase>(
      () => _i18.LoginUseCase(get<_i11.AuthRepository>()));
  gh.factory<_i19.LogoutUseCase>(
      () => _i19.LogoutUseCase(get<_i11.AuthRepository>()));
  gh.factory<_i20.MerchantsRepository>(() => _i21.MerchantsRepoImpl(
      get<_i5.MerchantsApiService>(), get<_i10.AuthLocalService>()));
  gh.factory<_i22.OrdersRepository>(() => _i23.OrdersRepoImpl(
      get<_i6.OrdersApiService>(), get<_i10.AuthLocalService>()));
  gh.factory<_i24.ProductService>(
      () => _i25.ProductServiceImpl(get<_i7.RestApiImpl>()));
  gh.factory<_i26.RegisterUseCase>(
      () => _i26.RegisterUseCase(get<_i11.AuthRepository>()));
  gh.factory<_i27.ResetPassUseCase>(
      () => _i27.ResetPassUseCase(get<_i11.AuthRepository>()));
  gh.factory<_i28.AuthCubit>(() => _i28.AuthCubit(
      get<_i18.LoginUseCase>(),
      get<_i19.LogoutUseCase>(),
      get<_i26.RegisterUseCase>(),
      get<_i17.GetTokenUseCase>(),
      get<_i27.ResetPassUseCase>()));
  gh.factory<_i29.CategoryCubit>(
      () => _i29.CategoryCubit(get<_i16.GetCategoriesUseCase>()));
  gh.factory<_i30.GetMerchantsUseCase>(
      () => _i30.GetMerchantsUseCase(get<_i20.MerchantsRepository>()));
  gh.factory<_i31.GetOrderUseCase>(
      () => _i31.GetOrderUseCase(get<_i22.OrdersRepository>()));
  gh.factory<_i32.MerchantsCubit>(
      () => _i32.MerchantsCubit(get<_i30.GetMerchantsUseCase>()));
  gh.factory<_i33.ProductRepo>(
      () => _i34.ProductsRepoImpl(get<_i24.ProductService>()));
  gh.factory<_i35.GetProducts>(() => _i35.GetProducts(get<_i33.ProductRepo>()));
  gh.factory<_i36.ProductsCubit>(
      () => _i36.ProductsCubit(get<_i35.GetProducts>()));
  return get;
}

class _$MyDioInject extends _i37.MyDioInject {}

class _$InjectionModule extends _i38.InjectionModule {}
