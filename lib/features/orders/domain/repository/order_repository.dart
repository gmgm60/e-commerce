import 'package:dartz/dartz.dart' hide Order;
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';

abstract class OrdersRepository {
  Future<Either<AppFailure, List<Order>>> getOrder();
}
