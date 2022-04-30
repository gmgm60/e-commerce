import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/core/presentation/widgets/favorite_button.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_cubit.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_state.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  final int productId;
  final bool showAppBar;

  const ProductPage(
      {Key? key, required this.productId, this.showAppBar = false})
      : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int count = 1;

  @override
  void initState() {
    context.read<ProductsCubit>().getProduct(productId: widget.productId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();

    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, productState) {
        return productState.maybeMap(
          loading: (_) =>  const AppProgressIndicator(),
          productDone: (doneState) {
            final Product product = doneState.product;
            return Scaffold(
              appBar: widget.showAppBar
                  ? AppBar(
                      title: Text(
                        product.name,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                      leading: const SizedBox.shrink(),
                      actions: [
                        IconButton(
                            onPressed: () {
                              AutoRouter.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  : null,
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Hero(
                      tag: product.image,
                      child: AppNetworkImage(
                        url: product.image,
                        height: 450,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            (product.newPrice).toStringAsFixed(2) +
                                context.tr.currency,
                            style: Theme.of(context)
                                .textTheme
                                .headline6), //Expanded(child: Text("")),
                        Row(
                          children: [
                            Text(
                                product.price.toStringAsFixed(2) +
                                    context.tr.currency,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                      decoration: TextDecoration.lineThrough,
                                    )),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              product.percentage.toString() + context.tr.off,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(color: Colors.red),
                            ),
                          ],
                        ),
                        FavoriteButton(product: product),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      context.tr.description,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product.description,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: product.quantity > 0
                          ? BlocBuilder<CartCubit, CartState>(
                              builder: (context, state) {
                                if (cartCubit.isInCart(productId: product.id)) {
                                  return state is Loading
                                      ? const CircularProgressIndicator()
                                      : Text(context.tr.thisProductISInTheCart);
                                } else {
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: 40,
                                              height: 30,
                                              color: Colors.black12,
                                              child: TextButton(
                                                  onPressed: () {
                                                    if (count > 1) {
                                                      count -= 1;
                                                      setState(() {});
                                                    }
                                                  },
                                                  child: const Text("-"),
                                                  style: const ButtonStyle())),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: BlocBuilder<CartCubit,
                                                CartState>(
                                              buildWhen: (_, __) =>
                                                  product.id ==
                                                  cartCubit.editedProductId,
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
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      AppElevatedButton(
                                        text: context.tr.addToCart,
                                        onPressed: !cartCubit.isInCart(
                                                    productId: product.id) &&
                                                state is! Loading
                                            ? () {
                                                //TODO add to cart
                                                cartCubit.addToCart(
                                                    product: product,
                                                    count: count);
                                              }
                                            : null,
                                        isLoading: state is Loading,
                                      ),
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
          },
          productError: (error) => Center(child: Text(error.error)),
          orElse: () {
            return const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }
}
