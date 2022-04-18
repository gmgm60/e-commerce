import 'package:ecommerce/core/presentation/widgets/favorite_button.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_counter.dart';

class CartItemRow extends StatelessWidget {
  final CartItem cartItem;

  const CartItemRow({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  cartItem.product.image,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                            cartItem.product.name,
                            style: Theme.of(context).textTheme.headline6,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                      const Spacer(),
                      Text(
                        cartItem.product.price.toStringAsFixed(2),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FavoriteButton(product: cartItem.product),
                          IconButton(
                              onPressed: () {
                                context.read<CartCubit>().deleteProduct(productId: cartItem.product.id);
                              },
                              icon: const Icon(Icons.delete_outline)),
                        ],
                      ),
                      const Spacer(),
                      CartCounter(
                        productId: cartItem.product.id,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}