
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/products/data/data_source/remote/product_service_impl.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:ecommerce/features/products/domain/data_source/product_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl extends ProductRemoteDataSource{
  final ProductServiceImpl _productServiceImpl;

  ProductRemoteDataSourceImpl(this._productServiceImpl);

  @override
  Future<List<ProductModel>> getProducts() async{
    try {
      final response =
          await _productServiceImpl.getProducts();
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