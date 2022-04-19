import 'package:ecommerce/core/presentation/widgets/favorite_button.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:flutter/material.dart';

import 'cart_counter.dart';

class AnimatedCartRow extends StatelessWidget {
  final CartItem cartItem;
  final int index;
  final Animation<double> animation;

  const AnimatedCartRow(
      {Key? key,
      required this.cartItem,
      required this.index,
      required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        key: UniqueKey(),
        position: Tween<Offset>(
          begin: const Offset(-1, -0.5),
          end: const Offset(0, 0),
        ).animate(animation),
        child: RotationTransition(
            turns: animation,
            child: SizeTransition(
                axis: Axis.vertical,
                sizeFactor: animation,
                child: CartItemRow(
                  cartItem: cartItem,
                  delete: () {
                    _removeItem(index, context, cartItem);
                  },
                ))));
  }
}

class CartItemRow extends StatelessWidget {
  final CartItem cartItem;
  final VoidCallback? delete;

  const CartItemRow({Key? key, required this.cartItem, this.delete})
      : super(key: key);

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
                const SizedBox(width: 20),
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
                          if (delete != null)
                            IconButton(
                                onPressed: delete,
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

// Remove an item
// This is trigger when an item is tapped
void _removeItem(int index, BuildContext context, CartItem cartItem) {
  AnimatedList.of(context).removeItem(index, (_, animation) {
    return FadeTransition(
      opacity: animation,
      child: SizeTransition(
        sizeFactor: animation,
        child: CartItemRow(cartItem: cartItem),
      ),
    );
  }, duration: const Duration(seconds: 1));
}
