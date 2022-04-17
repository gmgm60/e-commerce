import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/categories/domain/use_case/get_categories_use_case.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryCubit extends Cubit<CategoryStates> {
  CategoryCubit(this._getCategoriesUseCase)
      : super(const CategoryInitialState());

  final GetCategoriesUseCase _getCategoriesUseCase;

  Future<void> getCategories() async {
    emit(const CategoryLoadingState());
    final result = await _getCategoriesUseCase(NoParams());
    emit(result.fold((error) => CategoryErrorState(error: error.error),
        (categories) => CategoryLoadedState(categories: categories)));
  }
}
