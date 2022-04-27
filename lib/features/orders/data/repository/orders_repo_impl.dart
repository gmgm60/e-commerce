import 'dart:math';

import 'package:dartz/dartz.dart' hide Order;
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/orders/data/mappers/order_mapper.dart';
import 'package:ecommerce/features/orders/domain/data_source/remote/orders_api_service.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:ecommerce/features/orders/domain/repository/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrdersRepository)
class OrdersRepoImpl extends OrdersRepository {
  final OrdersApiService _ordersApiService;
  final AuthLocalService _localService;

  OrdersRepoImpl(this._ordersApiService, this._localService);

  @override
  Future<Either<AppFailure, List<Order>>> getOrder() async {
    debugPrint('Get Orders start...');
    String? token = _localService.getToken();
    if (token != null) {
      try {
        final ordersModel = await _ordersApiService.getOrders(
          token: token,
        );
        debugPrint('Get Orders Model: $ordersModel');

        List<String> statuses = ['Pending', 'Shipped', 'Delivered'];
        return right(ordersModel.map((e) {
          e.status = statuses[Random().nextInt(3)];
          return e.fromModel;
        }).toList());
      } on AppException catch (exception) {
        debugPrint('Get Orders Error ${exception.message}');
        return left(
            GeneralRemoteAppFailure.unKnown(message: exception.message));
      }
    } else {
      debugPrint('Get Orders Error No Token');
      return left(GeneralRemoteAppFailure.unAuth(message: 'No User'));
    }
  }
}
