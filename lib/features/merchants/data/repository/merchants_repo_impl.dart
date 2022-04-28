import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/data/return_app_failure.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/merchants/data/mappers/merchant_mapper.dart';
import 'package:ecommerce/features/merchants/domain/data_source/remote/merchants_remote_datasource.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/merchants/domain/repository/merchants_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MerchantsRepository)
class MerchantsRepoImpl extends MerchantsRepository {
  final MerchantsRemoteDatasource _merchantsRemoteDatasource;

  MerchantsRepoImpl(this._merchantsRemoteDatasource);

  @override
  Future<Either<AppFailure, List<Merchant>>> getMerchants() async {
    debugPrint('start get merchants');

    try {
      final merchantModel = await _merchantsRemoteDatasource.getMerchants();
      debugPrint('get merchants: $merchantModel');
      return right(merchantModel.data.map((e) => e.fromModel).toList());
    } on AppException catch (exception) {
      debugPrint('get merchants error: ${exception.message}');
      return left(returnAppFailure(exception));
    }
  }
}
