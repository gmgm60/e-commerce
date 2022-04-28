import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/data/return_app_failure.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/merchants/data/mappers/merchant_mapper.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:ecommerce/features/merchants/domain/data_source/remote/merchants_remote_datasource.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/merchants/domain/repository/merchants_repository.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MerchantsRepository)
class MerchantsRepoImpl extends MerchantsRepository {
  final MerchantsRemoteDatasource _merchantsRemoteDatasource;

  MerchantsRepoImpl(this._merchantsRemoteDatasource);

  @override
  Future<Either<AppFailure, List<Merchant>>> getMerchants() async {
    debugPrint('start get merchants');

    try {
      //todo
      // final merchantModel =
      //     await _merchantsRemoteDatasource.getMerchants();
      // debugPrint('get merchants: $merchantModel');
      final merchantModel = getFakeData();
      return right(merchantModel.data.map((e) => e.fromModel).toList());
    } on AppException catch (exception) {
      debugPrint('get merchants error: ${exception.message}');
      return left(returnAppFailure(exception));
    }
  }

  MerchantModel getFakeData() {
    List<double> rates = [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5];
    return MerchantModel(
        data: List.generate(
            30,
            (index) => MerchantData(
                id: Random().nextInt(100),
                merchantName: lorem(paragraphs: 1, words: 2),
                phone: '01236548',
                address: lorem(paragraphs: 1, words: 15),
                products: generateProducts(),
                rating: rates[Random().nextInt(rates.length)])));
  }

  List<ProductModel> generateProducts() {
    return List.generate(
        10,
        (index) => ProductModel(
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
