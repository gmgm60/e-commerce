import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/cart/data/data_source/remote/cart_remote_service.dart';
import 'package:ecommerce/features/cart/data/models/cart_edit_model/cart_edit_model.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/domain/data/data_source/cart_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRemoteDataSource)
class CartRemoteDataSourceImp extends CartRemoteDataSource {
  final CartRemoteService _cartRemoteService;

  CartRemoteDataSourceImp(this._cartRemoteService);

  @override
  Future confirmOrder({required String address}) async {
    try {
      final response = await _cartRemoteService.confirmOrder(address: address);
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future editCart({
    required CartEditModel cartEditModel,
  }) async {
    try {
      final response =
          await _cartRemoteService.editCart(cartEditModel: cartEditModel);
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<List<CartItemModel>> getCart() async {
    try {
      final response = await _cartRemoteService.getCart();
      return response.data;
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future deleteCart({required int productId}) async {
    try {
      final response =
          await _cartRemoteService.deleteFromCart(productId: productId);
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
