import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/domain/repository/product_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProduct extends UseCase<Product, int> {
  final ProductRepo _productRepo;

  GetProduct(this._productRepo);

  @override
  Future<Either<AppFailure, Product>> call(int params) async {
    return _productRepo.getProduct(productId: params);
  }
}