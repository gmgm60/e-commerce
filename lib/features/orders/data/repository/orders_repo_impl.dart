import 'package:dartz/dartz.dart' hide Order;
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/data/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/orders/data/data_source/remote/orders_api_service.dart';
import 'package:ecommerce/features/orders/data/mappers/order_mapper.dart';
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
  Future<Either<Failure, Order>> getOrder() async {
    debugPrint('Get Orders start...');
    String? token = _localService.getToken();
    // if (token != null) {
      try {
        final ordersModel = await _ordersApiService.getOrders(
          token: token??'',
        );
        debugPrint('Get Orders Model: ${ordersModel.toJson()}');

        return right(ordersModel.order.fromModel);
      } catch (error) {
        debugPrint('Get Orders Error $error');
        return left(Failure(message: error.toString()));
      }
    // } else {
    //   debugPrint('Get Orders Error No Token');
    //   return left(const Failure(message: 'Un Known Error'));
    // }
  }
}
