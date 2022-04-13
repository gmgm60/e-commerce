import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/data/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/categories/data/data_source/remote/categories_api_service.dart';
import 'package:ecommerce/features/categories/data/mappers/category_mapper.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';
import 'package:ecommerce/features/categories/domain/repository/category_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class CategoryRepoImpl extends CategoryRepository {
  final CategoriesApiService _categoriesApiService;
  final AuthLocalService _localService;

  CategoryRepoImpl(this._categoriesApiService, this._localService);

  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    debugPrint('Get Categories start');
    String? token = _localService.getToken();
    if (token != null) {
      try {
        final categoryModel =
            await _categoriesApiService.getCategories(token: token);
        debugPrint('Get Categories Done: $categoryModel');
        if (categoryModel.data != null) {
          return right(categoryModel.data!
              .map((categoryData) => categoryData.fromModel)
              .toList());
        } else {
          debugPrint('Get Categories Error No Data Received');
          return left(const Failure(message: 'No Data Received'));
        }
      } on DioError catch (dioError) {
        debugPrint('Get Categories Dio Error: $dioError');
        String errorMessage = dioError.message;
        debugPrint('Get Categories Dio Error: $errorMessage');
        return left(Failure(message: errorMessage));
      } catch (unKnownError) {
        debugPrint('Get Categories UnKnown Error: $unKnownError');
        return left(const Failure(message: ' Un Known Error'));
      }
    } else {
      debugPrint('Get Categories: No User Token');
      return left(const Failure(message: 'No User'));
    }
  }
}
