import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';

@Freezed()
class ProductsState with _$ProductsState {
  factory ProductsState.init() = _Init ;
  factory ProductsState.loading() = _Loading ;
  factory ProductsState.done() = _Done ;
  factory ProductsState.error({required String error}) = _Error ;
}

