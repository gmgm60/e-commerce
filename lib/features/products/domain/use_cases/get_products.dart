import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/domain/repository/product_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProducts extends UseCase<List<Product>, NoParams> {
  final ProductRepo _productRepo;

  GetProducts(this._productRepo);

  @override
  Future<Either<AppFailure, List<Product>>> call(NoParams params) async {
    return _productRepo.getProducts();
  }
}
