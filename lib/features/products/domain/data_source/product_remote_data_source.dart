import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getProducts();

  Future<ProductModel> getProduct({required int productId});
}
