import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/categories/data/models/category_model.dart';
import 'package:ecommerce/features/categories/domain/data_source/remote/categories_api_service.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'categories_api_service_impl.g.dart';

@Singleton(as: CategoriesApiService)
@RestApi(baseUrl: 'https://my.api.mockaroo.com')
abstract class CategoriesApiServiceImpl implements CategoriesApiService {
  @factoryMethod
  factory CategoriesApiServiceImpl(Dio dio) = _CategoriesApiServiceImpl;

  @override
  @GET('/category.json?key=ec0ea640')
  Future<CategoryModel> getCategories(
      {@Header(authorizationHeader) required String token});

  @override
  @GET('/productsbycatid?key=ec0ea640')
  Future<List<ProductModel>> getProductsByCatId(
      {required String token, required int catId});
}
