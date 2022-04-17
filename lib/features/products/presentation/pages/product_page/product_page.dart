import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    int count = 1;

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Image.network(
              product.image,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              product.name,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                    (product.price * (1 - product.discount))
                            .toStringAsFixed(2) +
                        context.tr.currency,
                    style: Theme.of(context)
                        .textTheme
                        .headline6), //Expanded(child: Text("")),
                Row(
                  children: [
                    Text(product.price.toString() + context.tr.currency,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              decoration: TextDecoration.lineThrough,
                            )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      (product.discount * 100).toInt().toString() +
                          context.tr.off,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Colors.red),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      //TODO add to favorite
                    },
                    icon: const Icon(Icons.favorite_border))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              context.tr.description,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              product.description,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                return ElevatedButton(
                    onPressed: cartCubit.isInCart(productId: product.id) && state is! Loading
                        ? () {
                            //TODO add to cart
                            cartCubit.addToCart(product: product, count: count);
                          }
                        : null,
                    child: state is Loading ? const CircularProgressIndicator() : Text(context.tr.addToCart));
              },
            )
          ],
        ),
      ),
    );
  }
}
