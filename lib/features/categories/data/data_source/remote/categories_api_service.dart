import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/categories/data/models/category/category_model.dart';
import 'package:ecommerce/features/categories/data/models/category_details/category_details_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'categories_api_service.g.dart';

@singleton
@RestApi(baseUrl: baseUrl)
abstract class CategoriesApiService {
  @factoryMethod
  factory CategoriesApiService(Dio dio) = _CategoriesApiService;

  @GET(categoriesEndPoint)
  Future<CategoryModel> getCategories();

  @GET('$categoryByIDEndPoint/{catId}')
  Future<CategoryDetailsModel> getProductsByCatId({@Path() required int catId});
  
}
