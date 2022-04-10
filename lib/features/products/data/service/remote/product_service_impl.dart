
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:ecommerce/features/products/data/service/remote/rest_api.dart';
import 'package:ecommerce/features/products/domain/service/product_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductService)
class ProductServiceImpl extends ProductService {
final RestApiImpl _restApiImpl;

  ProductServiceImpl(this._restApiImpl);

  @override
  Future<List<ProductModel>> getProducts({required String token}) async{
    return await _restApiImpl.getProfile(token: token);
  }

}