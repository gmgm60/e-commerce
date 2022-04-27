import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/categories/domain/use_case/get_categories_use_case.dart';
import 'package:ecommerce/features/categories/domain/use_case/get_products_by_cat_id_use_case.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryCubit extends Cubit<CategoryStates> {
  CategoryCubit(this._getCategoriesUseCase, this._getProductsByCatIdUseCase)
      : super(const CategoryInitialState());

  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetProductsByCatIdUseCase _getProductsByCatIdUseCase;

  Future<void> getCategories() async {
    emit(const CategoryLoadingState());
    final result = await _getCategoriesUseCase(NoParams());
    emit(result.fold((error) => CategoryErrorState(error: error.message),
        (categories) => CategoryLoadedState(categories: categories)));
  }

  Future<void> getCategoryProducts({required int catId}) async {
    emit(const CategoryLoadingState());
    final result = await _getProductsByCatIdUseCase(catId);
    emit(result.fold((error) => CategoryErrorState(error: error.message),
        (products) => ProductsLoadedState(products: products)));
  }
}
