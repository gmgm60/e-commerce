import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/data/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/merchants/data/data_source/remote/merchants_api_service.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/merchants/domain/repository/merchants_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MerchantsRepository)
class MerchantsRepoImpl extends MerchantsRepository {
  final MerchantsApiService _merchantsApiService;
  final AuthLocalService _localService;

  MerchantsRepoImpl(this._merchantsApiService, this._localService);

  @override
  Future<Either<Failure, List<Merchant>>> getMerchants() async {
    debugPrint('start get merchants');
    String? token = _localService.getToken();
    if (token != null) {
      try {
        //todo
        final merchantModel =
            await _merchantsApiService.getMerchants(count: 50, key: 'ec0ea640');
        debugPrint('get merchants: $merchantModel');

        return right([]);
      } on DioError catch (e) {
        debugPrint('get merchants error: $e');
        final errorMessage = await e.response!.data['message'];
        return left(Failure(message: errorMessage));
      } catch (error) {
        debugPrint('get merchants error: $error');
        return left(const Failure(message: 'something went wrong'));
      }
    } else {
      debugPrint('get merchants error: no token');
      return left(const Failure(message: 'no user token'));
    }
  }
}
