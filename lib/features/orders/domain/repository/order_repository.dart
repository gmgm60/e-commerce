
import 'package:dartz/dartz.dart' hide Order;
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';

abstract class OrdersRepository{
  Future<Either<Failure, Order>> getOrder();
}