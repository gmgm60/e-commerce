import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/categories/data/mappers/category_mapper.dart';
import 'package:ecommerce/features/categories/domain/data_source/remote/categories_api_service.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';
import 'package:ecommerce/features/categories/domain/repository/category_repository.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_mapper.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class CategoryRepoImpl extends CategoryRepository {
  final CategoriesApiService _categoriesApiService;
  final AuthLocalService _localService;

  CategoryRepoImpl(this._categoriesApiService, this._localService);

  @override
  Future<Either<AppFailure, List<ProductsCategory>>> getCategories() async {
    debugPrint('Get Categories start');
    String? token = _localService.getToken();
    if (token != null) {
      try {
        final categoryModel =
            await _categoriesApiService.getCategories(token: token);
        debugPrint('Get Categories Done:');
        if (categoryModel.data != null) {
          return right(categoryModel.data!
              .map((categoryData) => categoryData.fromModel)
              .toList());
        } else {
          debugPrint('Get Categories Error No Data Received');
          return left(GeneralRemoteAppFailure.unKnown(message: 'no data'));
        }
      } on AppException catch (exception) {
        debugPrint('Get Categories Dio Error: ${exception.message}');
        return left(
            GeneralRemoteAppFailure.unKnown(message: exception.message));
      }
    } else {
      debugPrint('Get Categories: No User Token');
      return left(GeneralRemoteAppFailure.unKnown(message: 'No User'));
    }
  }

  @override
  Future<Either<AppFailure, List<Product>>> getProductsByCatId(
      {required int catId}) async {
    debugPrint('Get Category Products start');
    String? token = _localService.getToken();
    if (token != null) {
      try {
        final productModel = await _categoriesApiService.getProductsByCatId(
            token: token, catId: 0);
        debugPrint('Get Category Products Done:');

        return right(
            productModel.map((product) => product.toDomain()).toList());
      } on AppException catch (exception) {
        debugPrint('Get Category Products Dio Error: ${exception.message}');

        return left(
            GeneralRemoteAppFailure.unKnown(message: exception.message));
      }
    } else {
      debugPrint('Get Categories: No User Token');
      return left(GeneralRemoteAppFailure.unKnown(message: 'no token'));
    }
  }
}
