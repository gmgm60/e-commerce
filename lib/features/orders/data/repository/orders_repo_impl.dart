import 'dart:math';

import 'package:dartz/dartz.dart' hide Order;
import 'package:ecommerce/core/domain/error/failures.dart';
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
  Future<Either<Failures, List<Order>>> getOrder() async {
    debugPrint('Get Orders start...');
    String? token = _localService.getToken();
    // if (token != null) {
    try {
      final ordersModel = await _ordersApiService.getOrders(
        token: token ?? '',
      );
      debugPrint('Get Orders Model: $ordersModel');

      List<String> statuses = ['Pending', 'Shipped', 'Delivered'];
      return right(ordersModel.map((e) {
        e.status = statuses[Random().nextInt(3)];
        return e.fromModel;
      }).toList());
    } catch (error) {
      debugPrint('Get Orders Error $error');
      return left(Failures.serverError(error.toString()));
    }
    // } else {
    //   debugPrint('Get Orders Error No Token');
    //   return left( Failures.noUser( 'No User'));
    // }
  }
}
