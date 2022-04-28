import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/cart/data/data_source/remote/cart_remote_service.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/domain/data/data_source/cart_remote_data_source.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRemoteDataSource)
class CartRemoteDataSourceImp extends CartRemoteDataSource {
  final CartRemoteService _cartRemoteService;

  CartRemoteDataSourceImp(this._cartRemoteService);

  @override
  Future confirmOrder(
      {required List<CartItem> cart}) async {
    try {
      final response =
          await _cartRemoteService.confirmOrder(cart: cart);
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future editCart(
      {required List<CartItemModel> cart,}) async {
    try {
      final response =
          await _cartRemoteService.editCart( cart: cart);
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<List<CartItemModel>> getCart() async {
    try {
      final response = await _cartRemoteService.getCart();
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
