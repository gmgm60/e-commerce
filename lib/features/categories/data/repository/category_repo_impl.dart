import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
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
  Future<Either<Failures, List<Category>>> getCategories() async {
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
          return left(Failures.serverError('No Data Received'));
        }
      } on DioError catch (dioError) {
        debugPrint('Get Categories Dio Error: $dioError');
        String errorMessage = dioError.message;
        debugPrint('Get Categories Dio Error: $errorMessage');
        return left(Failures.serverError(errorMessage));
      } catch (unKnownError) {
        debugPrint('Get Categories UnKnown Error: $unKnownError');
        return left(Failures.serverError(' Un Known Error'));
      }
    } else {
      debugPrint('Get Categories: No User Token');
      return left(Failures.noUser('No User'));
    }
  }

  @override
  Future<Either<Failures, List<Product>>> getProductsByCatId(
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
      } on DioError catch (dioError) {
        debugPrint('Get Category Products Dio Error: $dioError');
        String errorMessage = dioError.message;
        debugPrint('Get Category Products Dio Error: $errorMessage');
        return left(Failures.serverError(errorMessage));
      } catch (unKnownError) {
        debugPrint('Get Category Products UnKnown Error: $unKnownError');
        return left(Failures.serverError(' Un Known Error'));
      }
    } else {
      debugPrint('Get Categories: No User Token');
      return left(Failures.noUser('No User'));
    }
  }
}
