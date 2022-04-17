import 'package:dartz/dartz.dart' hide Order;
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';

abstract class OrdersRepository {
  Future<Either<Failures, Order>> getOrder();
}
