import 'package:dartz/dartz.dart' hide Order;
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:ecommerce/features/orders/domain/repository/order_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetOrderUseCase extends UseCase<Order, NoParams> {
  final OrdersRepository _ordersRepository;

  GetOrderUseCase(this._ordersRepository);

  @override
  Future<Either<Failures, Order>> call(NoParams params) {
    return _ordersRepository.getOrder();
  }
}
