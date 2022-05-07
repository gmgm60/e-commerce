import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/orders/domain/use_case/get_order_use_case.dart';
import 'package:ecommerce/features/orders/presentation/bloc/orders_cubit/orders_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class OrdersCubit extends Cubit<OrdersStates> {
  OrdersCubit(this._getOrdersUseCase) : super(const OrdersInitialState());

  final GetOrderUseCase _getOrdersUseCase;

  Future<void> getOrders() async {
    emit(const OrdersLoadingState());
    final result = await _getOrdersUseCase(NoParams());
    emit(result.fold((error) => OrdersErrorState(error: error.message),
        (order) => OrdersLoadedState(order: order)));
  }
}
