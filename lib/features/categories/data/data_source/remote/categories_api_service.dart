import 'package:dio/dio.dart';
import 'package:ecommerce/features/categories/data/models/category_model.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'categories_api_service.g.dart';

@singleton
@RestApi(baseUrl: 'https://my.api.mockaroo.com')
abstract class CategoriesApiService {
  @factoryMethod
  factory CategoriesApiService(Dio dio) = _CategoriesApiService;

  @GET('/category.json?key=ec0ea640')
  Future<CategoryModel> getCategories();

  @GET('/productsbycatid?key=ec0ea640')
  Future<List<ProductModel>> getProductsByCatId({required int catId});
}
