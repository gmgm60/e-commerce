import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_datasource.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_mapper.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/domain/repository/product_repo.dart';
import 'package:ecommerce/features/products/domain/service/product_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepo)
class ProductsRepoImpl extends ProductRepo {
  final ProductService _productService;
  final AuthLocalDatasource _authLocalDatasource;

  ProductsRepoImpl(this._productService, this._authLocalDatasource);

  @override
  Future<Either<AppFailure, List<Product>>> getProducts() async {
    try {
      final token = _authLocalDatasource.getToken() as String;
      final List<ProductModel> response =
          await _productService.getProducts(token: token);
      final List<Product> products =
          response.map((productModel) => productModel.toDomain()).toList();
      return right(products);
    } on AppException catch (e) {
      return left(GeneralRemoteAppFailure.unKnown(message: e.message));
    }
  }
}
