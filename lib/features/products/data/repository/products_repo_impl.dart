import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_mapper.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:ecommerce/features/products/domain/data_source/product_remote_data_source.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/domain/repository/product_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepo)
class ProductsRepoImpl extends ProductRepo {
  final ProductRemoteDataSource _productDataSource;

  ProductsRepoImpl(this._productDataSource);

  @override
  Future<Either<AppFailure, List<Product>>> getProducts() async {
    try {
      final List<ProductModel> response =
          await _productDataSource.getProducts();
      final List<Product> products =
          response.map((productModel) => productModel.toDomain()).toList();
      return right(products);
    } on AppException catch (e) {
      return left(GeneralRemoteAppFailure.unKnown(message: e.message));
    }
  }
}
