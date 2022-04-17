import 'package:dio/dio.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:ecommerce/features/products/domain/service/product_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
part 'product_service_impl.g.dart';
//@Injectable(as: ProductService)
// class ProductServiceImpl extends ProductService {
//   final RestApiImpl _restApiImpl;
//
//   ProductServiceImpl(this._restApiImpl);
//
//   @override
//   Future<List<ProductModel>> getProducts({required String token}) async {
//     //return await _restApiImpl.getProducts(token: token);
//     return List.generate(
//       20,
//       (index) => ProductModel(
//           id: Random().nextInt(200),
//           catId: Random().nextInt(200),
//           name: lorem(paragraphs: 1,words: 3),
//           description: lorem(paragraphs: 1,words: 20),
//           image: "https://img.kytary.com/eshop_ie/velky_v2/na/637329305770930000/d7d6ca44/64771948/ant-tshirt-ant-blu-xl.jpg",
//           price: (Random().nextDouble()*100).toInt().toDouble()/100 + Random().nextInt(500),
//           discount: Random().nextDouble(),
//           isAvailable: true),
//     );
//   }
// }

@Injectable(as: ProductService)
@RestApi(baseUrl: "https://my.api.mockaroo.com")
abstract class ProductServiceImpl implements ProductService{

  @factoryMethod
  factory ProductServiceImpl(Dio dio) = _ProductServiceImpl;

  @override
  @GET("/products?key=e59c4330")
  Future<List<ProductModel>> getProducts({
    @Header("Authorization") required String token,
  });

}