import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_details.dart';
import 'cart_item_row.dart';

class ViewCartPage extends StatefulWidget {
  const ViewCartPage({Key? key}) : super(key: key);

  @override
  State<ViewCartPage> createState() => _ViewCartPageState();
}

class _ViewCartPageState extends State<ViewCartPage> {
  late final CartCubit cartCubit;

  @override
  void initState() {
    cartCubit = context.read<CartCubit>()..getCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CartCubit, CartState>(
          buildWhen: (_, __) => cartCubit.editedProductId == -1,
          builder: (context, state) {
            return state.map(
              init: (_) => const CircularProgressIndicator(),
              loading: (_) => const CircularProgressIndicator(),
              error: (error) => Text(error.errMsg),
              done: (_) => ListView(
                children: [
                  AnimatedList(
                      primary: false,
                      shrinkWrap: true,
                      initialItemCount: cartCubit.cart.length,
                      itemBuilder: (context, index, animation) =>
                          AnimatedCartRow(
                            cartItem: cartCubit.cart.values.elementAt(index),
                            index: index, animation: animation,
                          )),
                  const CartDetails(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
