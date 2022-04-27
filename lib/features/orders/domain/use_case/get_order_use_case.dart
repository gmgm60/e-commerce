import 'package:dartz/dartz.dart' hide Order;
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:ecommerce/features/orders/domain/repository/order_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetOrderUseCase extends UseCase<List<Order>, NoParams> {
  final OrdersRepository _ordersRepository;

  GetOrderUseCase(this._ordersRepository);

  @override
  Future<Either<AppFailure, List<Order>>> call(NoParams params) {
    return _ordersRepository.getOrder();
  }
}
