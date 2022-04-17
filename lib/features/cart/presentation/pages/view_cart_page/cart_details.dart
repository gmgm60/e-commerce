import 'package:ecommerce/core/presentation/widgets/dash_line.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartCubit cartCubit = context.read<CartCubit>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<CartCubit, CartState>(
                    builder: (context, state) {
                      return Text(
                          context.tr.items + " (${cartCubit.totalCount()})");
                    },
                  ),
                  BlocBuilder<CartCubit, CartState>(
                    builder: (context, state) {
                      return Text(cartCubit.productsPrice().toStringAsFixed(2) +
                          context.tr.currency);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(context.tr.shipping),
                  BlocBuilder<CartCubit, CartState>(
                    builder: (context, state) {
                      return Text(cartCubit.shippingPrice().toStringAsFixed(2) +
                          context.tr.currency);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const DashLine(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(context.tr.totalPrice),
                  BlocBuilder<CartCubit, CartState>(
                    builder: (context, state) {
                      return Text(cartCubit.totalPrice().toStringAsFixed(2) +
                          context.tr.currency);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
