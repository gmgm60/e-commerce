import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';
import 'package:ecommerce/features/categories/domain/repository/category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase extends AppUseCase<List<Category>, NoParams> {
  final CategoryRepository _categoryRepository;

  GetCategoriesUseCase(this._categoryRepository);

  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) {
    return _categoryRepository.getCategories();
  }
}
