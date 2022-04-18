import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/categories/domain/repository/category_repository.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsByCatIdUseCase extends UseCase<List<Product>, int> {
  final CategoryRepository _categoryRepository;

  GetProductsByCatIdUseCase(this._categoryRepository);

  @override
  Future<Either<Failures, List<Product>>> call(int params) {
    return _categoryRepository.getProductsByCatId(catId: params);
  }
}
