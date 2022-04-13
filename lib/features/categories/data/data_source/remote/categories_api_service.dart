import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/categories/data/models/category_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'categories_api_service.g.dart';

@singleton
@RestApi(baseUrl: 'url')
abstract class CategoriesApiService {
  @factoryMethod
  factory CategoriesApiService(Dio dio) = _CategoriesApiService;

  @GET('path')
  Future<CategoryModel> getCategories(
      {@Header(authorizationHeader) required String token});
}
