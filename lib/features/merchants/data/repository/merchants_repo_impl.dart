import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/data/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/merchants/data/data_source/remote/merchants_api_service.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/merchants/domain/repository/merchants_repository.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:injectable/injectable.dart';
import 'package:ecommerce/features/merchants/data/mappers/merchant_mapper.dart';

@Injectable(as: MerchantsRepository)
class MerchantsRepoImpl extends MerchantsRepository {
  final MerchantsApiService _merchantsApiService;
  final AuthLocalService _localService;

  MerchantsRepoImpl(this._merchantsApiService, this._localService);

  @override
  Future<Either<Failure, List<Merchant>>> getMerchants() async {
    debugPrint('start get merchants');
    String? token = _localService.getToken();
    final merchantModel= getFakeData();
    return right(merchantModel.data.map((e) => e.fromModel).toList());
    if (token != null) {
      try {
        //todo
        // final merchantModel =
        //     await _merchantsApiService.getMerchants(token: token);
        // debugPrint('get merchants: $merchantModel');
            final merchantModel= getFakeData();
        return right(merchantModel.data.map((e) => e.fromModel).toList());
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

  MerchantModel getFakeData() {
    return MerchantModel(
        data: List.generate(
            30,
            (index) => MerchantData(
                id: Random().nextInt(100),
                merchantName: lorem(paragraphs: 1, words: 2),
                phone: '01236548',
                address: lorem(paragraphs: 1, words: 15),
                products: generateProducts())));
  }

  List<ProductModel> generateProducts() {
    return List.generate(10, (index) => ProductModel(
      id: Random().nextInt(100),
      catId: Random().nextInt(100),
      name: lorem(paragraphs: 1, words: 2),
      description: lorem(paragraphs: 1, words: 25),
      image:
      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
      price: Random().nextDouble(),
      discount: Random().nextDouble(),
      isAvailable: Random().nextBool(),
    ));
  }
}
