import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/auth/data/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_mapper.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/domain/repository/product_repo.dart';
import 'package:ecommerce/features/products/domain/service/product_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepo)
class ProductsRepoImpl extends ProductRepo {
  final ProductService _productService;
  final AuthLocalService _authLocalService;

  ProductsRepoImpl(this._productService, this._authLocalService);

  @override
  Future<Either<Failures, List<Product>>> getProducts() async {
    try {
      final token = _authLocalService.getToken() as String;
      final List<ProductModel> response =
          await _productService.getProducts(token: token);
      final List<Product> products =
          response.map((productModel) => productModel.toDomain()).toList();
      return right(products);
    } catch (e) {
      print("error is $e");
      return left(Failures.serverError("error"));
    }
  }
}
