import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';

abstract class ProductService {

  Future<List<ProductModel>> getProducts({required String token});
  
}
