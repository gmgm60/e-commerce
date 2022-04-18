import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_states.freezed.dart';

@freezed
class OrdersStates with _$OrdersStates {
  const factory OrdersStates.initial() = OrdersInitialState;

  const factory OrdersStates.loading() = OrdersLoadingState;

  const factory OrdersStates.loaded({required List<Order> order}) = OrdersLoadedState;

  const factory OrdersStates.error({required String error}) = OrdersErrorState;
}
