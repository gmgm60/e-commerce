import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/orders/presentation/bloc/orders_cubit/orders_cubit.dart';
import 'package:ecommerce/features/orders/presentation/bloc/orders_cubit/orders_states.dart';
import 'package:ecommerce/features/orders/presentation/widgets/order_item.dart';
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
            loaded: (orders) => ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return OrderItem(
                    order: orders[index],
                    onTap: (){
                      AutoRouter.of(context).navigate(OrderDetailsRoute(order: orders[index]));
                    },
                  );
                }),
            error: (error) => Center(
              child: Text(
                error,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            orElse: () => Container(),
          );
        }),
      ),
    );
  }
}
