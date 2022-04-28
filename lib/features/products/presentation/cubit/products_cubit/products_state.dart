import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';

@Freezed()
class ProductsState with _$ProductsState {
  factory ProductsState.init() = _Init ;
  factory ProductsState.loading() = ProductsLoading ;
  factory ProductsState.done() = _Done ;
  factory ProductsState.productDone({required Product product}) = _productDone ;
  factory ProductsState.error({required String error}) = _Error ;
}

