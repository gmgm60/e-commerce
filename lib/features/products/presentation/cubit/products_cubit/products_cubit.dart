import 'package:bloc/bloc.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/domain/use_cases/get_product.dart';
import 'package:ecommerce/features/products/domain/use_cases/get_products.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  final GetProducts _getProducts;
  final GetProduct _getProduct;
  final List<Product> products = [];

  ProductsCubit(this._getProducts, this._getProduct) : super(ProductsState.init());

  Future<void> getProducts() async {
    emit(ProductsState.loading());

    final result = await _getProducts(NoParams());
    result.fold(
      (failure) => emit(ProductsState.error(error: failure.message)),
      (products) {
        this.products.addAll(products);
        emit(ProductsState.done());
        },
    );
  }



  Future<void> getProduct({required int productId}) async {
    emit(ProductsState.loading());
    final result = await _getProduct(productId);
    result.fold(
          (failure) => emit(ProductsState.productError(error: failure.message)),
          (product) {
        emit(ProductsState.productDone(product: product));
      },
    );
  }


}
