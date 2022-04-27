import 'dart:io';

import 'package:dio/dio.dart';
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
      {required String token, required List<CartItem> cart}) async {
    try {
      final response =
          await _cartRemoteService.confirmOrder(token: token, cart: cart);
      return response;
    } on DioError catch (dioError) {
      int code = dioError.response?.statusCode ?? 0;
      final message = dioError.response?.data['message'];

      switch (code) {
        case HttpStatus.notFound:
          {
            throw GeneralRemoteAppFailure.notFound(message: message ?? "un auth");
          }
        case HttpStatus.internalServerError:
          {
            throw GeneralRemoteAppFailure.serverError(
                message: message ?? "server error");
          }
        case HttpStatus.unauthorized:
          {
            throw GeneralRemoteAppFailure.unAuth(message: message ?? "un auth");
          }
        default:
          {
            throw GeneralRemoteAppFailure.unKnown(
                message: dioError.response?.data.toString() ?? "unKnown error");
          }
      }
    } catch (e) {
      throw GeneralRemoteAppFailure.unKnown(message: e.toString());
    }
  }

  @override
  Future editCart(
      {required List<CartItemModel> cart, required String token}) async {
    try {
      final response =
          await _cartRemoteService.editCart(token: token, cart: cart);
      return response;
    } on DioError catch (dioError) {
      int code = dioError.response?.statusCode ?? 0;
      final message = dioError.response?.data['message'];

      switch (code) {
        case HttpStatus.notFound:
          {
            throw GeneralRemoteAppFailure.notFound(message: message ?? "un auth");
          }
        case HttpStatus.internalServerError:
          {
            throw GeneralRemoteAppFailure.serverError(
                message: message ?? "server error");
          }
        case HttpStatus.unauthorized:
          {
            throw GeneralRemoteAppFailure.unAuth(message: message ?? "un auth");
          }
        default:
          {
            throw GeneralRemoteAppFailure.unKnown(
                message: dioError.response?.data.toString() ?? "unKnown error");
          }
      }
    } catch (e) {
      throw GeneralRemoteAppFailure.unKnown(message: e.toString());
    }
  }

  @override
  Future<List<CartItemModel>> getCart({required String token}) async {
    try {
      final response = await _cartRemoteService.getCart(token: token);
      return response;
    } on DioError catch (dioError) {
      int code = dioError.response?.statusCode ?? 0;
      final message = dioError.response?.data['message'];

      switch (code) {
        case HttpStatus.notFound:
          {
            throw GeneralRemoteAppFailure.notFound(message: message ?? "un auth");
          }
        case HttpStatus.internalServerError:
          {
            throw GeneralRemoteAppFailure.serverError(
                message: message ?? "server error");
          }
        case HttpStatus.unauthorized:
          {
            throw GeneralRemoteAppFailure.unAuth(message: message ?? "un auth");
          }
        default:
          {
            throw GeneralRemoteAppFailure.unKnown(
                message: dioError.response?.data.toString() ?? "unKnown error");
          }
      }
    } catch (e) {
      throw GeneralRemoteAppFailure.unKnown(message: e.toString());
    }
  }
}
