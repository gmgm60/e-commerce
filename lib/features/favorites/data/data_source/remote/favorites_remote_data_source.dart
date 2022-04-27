
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/favorites/data/data_source/remote/favorite_remote_service_impl.dart';
import 'package:ecommerce/features/favorites/data/models/favorite_model/favorite_model.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FavoriteRemoteDataSource)
class FavoriteRemoteDataSourceImpl extends FavoriteRemoteDataSource {
  final FavoriteRemoteService _favoriteRemoteService;

  FavoriteRemoteDataSourceImpl(this._favoriteRemoteService);
  @override
  Future addToFavorites({required int productId}) async{
    try {
      final response =
          await _favoriteRemoteService.addToFavorites(productId: productId);
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
  Future<List<FavoriteModel>> getFavorites()async {
    try {
      final response =
          await _favoriteRemoteService.getFavorites();
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
  Future removeFromFavorites({required int productId}) async{
    try {
      final response =
          await _favoriteRemoteService.removeFromFavorites(productId: productId);
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