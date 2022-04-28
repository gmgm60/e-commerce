import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/products/data/data_source/remote/product_service_impl.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:ecommerce/features/products/domain/data_source/product_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl extends ProductRemoteDataSource {
  final ProductServiceImpl _productServiceImpl;

  ProductRemoteDataSourceImpl(this._productServiceImpl);

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await _productServiceImpl.getProducts();
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<ProductModel> getProduct({required int productId}) async {
    try {
      final response =
          await _productServiceImpl.getProduct(productId: productId);
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
