import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/orders/presentation/bloc/orders_cubit/orders_cubit.dart';
import 'package:ecommerce/features/orders/presentation/bloc/orders_cubit/orders_states.dart';
import 'package:ecommerce/features/orders/presentation/widgets/order_itme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<OrdersCubit>()..getOrders(),
        child:
            BlocBuilder<OrdersCubit, OrdersStates>(builder: (context, state) {
          return state.maybeWhen(
              loading: () => const AppProgressIndicator(),
              loaded: (order) => ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return OrderItem(
                      product: order.products[0],
                    );
                  }),
              orElse: () => Container());
        }),
      ),
    );
  }
}
