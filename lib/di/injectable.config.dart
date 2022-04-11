// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../features/products/data/repository/products_repo_impl.dart' as _i9;
import '../features/products/data/service/remote/product_service_impl.dart'
    as _i7;
import '../features/products/data/service/remote/rest_api.dart' as _i4;
import '../features/products/domain/repository/product_repo.dart' as _i8;
import '../features/products/domain/service/product_service.dart' as _i6;
import '../features/products/domain/use_cases/get_products.dart' as _i10;
import '../features/products/presentation/cubit/products_cubit/products_cubit.dart'
    as _i11;
import 'module/dio.dart' as _i12;
import 'module/shared_preferences.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.factory<_i4.RestApiImpl>(() => _i4.RestApiImpl(get<_i3.Dio>()));
  await gh.factoryAsync<_i5.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.factory<_i6.ProductService>(
      () => _i7.ProductServiceImpl(get<_i4.RestApiImpl>()));
  gh.factory<_i8.ProductRepo>(
      () => _i9.ProductsRepoImpl(get<_i6.ProductService>()));
  gh.factory<_i10.GetProducts>(() => _i10.GetProducts(get<_i8.ProductRepo>()));
  gh.factory<_i11.ProductsCubit>(
      () => _i11.ProductsCubit(get<_i10.GetProducts>()));
  return get;
}

class _$MyDioInject extends _i12.MyDioInject {}

class _$InjectionModule extends _i13.InjectionModule {}
