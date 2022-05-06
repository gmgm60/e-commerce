import 'package:dartz/dartz.dart' hide Order;
import 'package:ecommerce/core/data/return_app_failure.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/orders/data/mappers/order_mapper.dart';
import 'package:ecommerce/features/orders/domain/data_source/remote/orders_remote_datasource.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:ecommerce/features/orders/domain/repository/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrdersRepository)
class OrdersRepoImpl extends OrdersRepository {
  final OrdersRemoteDatasource _ordersRemoteDatasource;

  OrdersRepoImpl(
    this._ordersRemoteDatasource,
  );

  @override
  Future<Either<AppFailure, List<Order>>> getOrder() async {
    debugPrint('Get Orders start...');

    try {
      final ordersModel = await _ordersRemoteDatasource.getOrders();
      debugPrint('Get Orders Model: $ordersModel');

      return right(ordersModel.map((e) {
        return e.fromModel;
      }).toList());
    } on AppException catch (exception) {
      debugPrint('Get Orders Error ${exception.message}');
      return left(returnAppFailure(exception));
    }
  }
}
