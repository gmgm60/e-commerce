import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_empty_widget.dart';
import 'package:ecommerce/core/presentation/widgets/app_error_widget.dart';
import 'package:ecommerce/core/presentation/widgets/list_shimmer.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';
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
          return RefreshIndicator(
            onRefresh: () async {
              await BlocProvider.of<OrdersCubit>(context).getOrders();
            },
            child: ListView(children: [
              state.maybeWhen(
                loading: () => const ListShimmer(),
                loaded: (orders) => orders.isNotEmpty
                    ? OrdersList(orders: orders)
                    : const AppEmptyWidget(),
                error: (error) => Center(
                  child: AppErrorWidget(
                    error: error,
                  ),
                ),
                orElse: () => Container(),
              ),
            ]),
          );
        }),
      ),
    );
  }
}

class OrdersList extends StatefulWidget {
  const OrdersList({Key? key, required this.orders}) : super(key: key);

  final List<Order> orders;

  @override
  State<OrdersList> createState() => _OrdersListState();
}

class _OrdersListState extends State<OrdersList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _addOrders();
    });
  }

  Future _addOrders() async {
    for (var _ in widget.orders) {
      await Future.delayed(const Duration(milliseconds: 200));
      _counter++;
      _listKey.currentState!.insertItem(_counter - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: _listKey,
        initialItemCount: _counter,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            child: OrderItem(
              order: widget.orders[index],
              onTap: () {
                AutoRouter.of(context)
                    .navigate(OrderDetailsRoute(order: widget.orders[index]));
              },
            ),
            position: animation.drive(Tween<Offset>(
                begin: const Offset(1, 0), end: const Offset(0, 0))),
          );
        });
  }
}
