import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  const ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Image.network(
              widget.product.image,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.product.name,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                    (widget.product.price * (1 - widget.product.discount))
                            .toStringAsFixed(2) +
                        context.tr.currency,
                    style: Theme.of(context)
                        .textTheme
                        .headline6), //Expanded(child: Text("")),
                Row(
                  children: [
                    Text(widget.product.price.toString() + context.tr.currency,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              decoration: TextDecoration.lineThrough,
                            )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      (widget.product.discount * 100).toInt().toString() +
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
              widget.product.description,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 20,
            ),


            Center(
              child:
              widget.product.isAvailable ?
              BlocBuilder<CartCubit, CartState>(
                builder: (context, state) {
                  if(cartCubit.isInCart(productId: widget.product.id)){
                    return state is Loading ? const CircularProgressIndicator() : Text(context.tr.thisProductISInTheCart);
                  }else{
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 40,
                                height: 30,
                                color: Colors.black12,
                                child: TextButton(
                                    onPressed: () {
                                      count -= 1;
                                      setState(() {});
                                    },
                                    child: const Text("-"),
                                    style: const ButtonStyle())),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: BlocBuilder<CartCubit, CartState>(
                                buildWhen: (_, __) =>
                                widget.product.id == cartCubit.editedProductId,
                                builder: (context, state) {
                                  return Text(count.toString());
                                },
                              ),
                            ),
                            Container(
                                width: 40,
                                height: 30,
                                color: Colors.black12,
                                child: TextButton(
                                    onPressed: () {
                                      count += 1;
                                      setState(() {});
                                    },
                                    child: const Text("+"),
                                    style: const ButtonStyle())),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        AppElevatedButton(text: context.tr.addToCart, onPressed: !cartCubit.isInCart(productId: widget.product.id) &&
                            state is! Loading
                            ? () {
                          //TODO add to cart
                          cartCubit.addToCart(
                              product: widget.product, count: count);
                        }
                            : null,isLoading: state is Loading,),
                      ],
                    );
                  }


                },
              )
                  : Text(context.tr.productNotAvailable),
            )
          ],
        ),
      ),
    );
  }
}
