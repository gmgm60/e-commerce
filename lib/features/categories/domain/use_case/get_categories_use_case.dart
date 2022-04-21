import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';
import 'package:ecommerce/features/categories/domain/repository/category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase extends UseCase<List<ProductsCategory>, NoParams> {
  final CategoryRepository _categoryRepository;

  GetCategoriesUseCase(this._categoryRepository);

  @override
  Future<Either<Failures, List<ProductsCategory>>> call(NoParams params) {
    return _categoryRepository.getCategories();
  }
}
