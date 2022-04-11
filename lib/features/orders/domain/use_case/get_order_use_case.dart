
import 'package:dartz/dartz.dart'hide Order;
import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:ecommerce/features/orders/domain/repository/order_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class GetOrderUseCase extends AppUseCase<Order,NoParams>{
  final OrdersRepository _ordersRepository;

  GetOrderUseCase(this._ordersRepository);
  @override
  Future<Either<Failure, Order>> call(NoParams params) {
    return _ordersRepository.getOrder();
  }

}