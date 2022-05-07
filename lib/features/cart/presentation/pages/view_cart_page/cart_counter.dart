import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCounter extends StatelessWidget {
  final int productId;

  const CartCounter({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 40,
            height: 30,
            color: Colors.black12,
            child: TextButton(
                onPressed: () {
                  cartCubit.editCount(
                      productId: productId,
                      count: cartCubit.productCount(productId: productId) - 1);
                },
                child: const Text("-"),
                style: const ButtonStyle())),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: BlocBuilder<CartCubit, CartState>(
            buildWhen: (_, __) => productId == cartCubit.editedProductId,
            builder: (context, state) {
              return Text(
                  cartCubit.productCount(productId: productId).toString());
            },
          ),
        ),
        Container(
            width: 40,
            height: 30,
            color: Colors.black12,
            child: TextButton(
                onPressed: () {
                  cartCubit.editCount(
                      productId: productId,
                      count: cartCubit.productCount(productId: productId) + 1);
                },
                child: const Text("+"),
                style: const ButtonStyle())),
      ],
    );
  }
}
