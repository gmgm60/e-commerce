import 'package:ecommerce/features/categories/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_states.freezed.dart';

@freezed
class CategoryStates with _$CategoryStates {
  const factory CategoryStates.initial() = CategoryInitialState;

  const factory CategoryStates.loading() = CategoryLoadingState;

  const factory CategoryStates.loaded({required List<Category> categories}) =
      CategoryLoadedState;

  const factory CategoryStates.error({required String error}) =
      CategoryErrorState;
}
