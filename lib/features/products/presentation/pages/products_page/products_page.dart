import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_cubit.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_state.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsCubit>()..getProducts(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: BlocBuilder<ProductsCubit, ProductsState>(
            builder: (context, state) {
              return GridView.count(
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: .6,
                children: context
                    .read<ProductsCubit>()
                    .products
                    .map((product) => ProductRow(product: product))
                    .toList(),
              );
            },
          ),
        );
      }),
    );
  }
}

class ProductRow extends StatelessWidget {
  final Product product;

  const ProductRow({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      final double width = constrain.maxWidth;
      final double height = constrain.maxHeight;
      // print(constrain.maxHeight.toString() +"," +constrain.maxWidth.toString());
      return GestureDetector(
        onTap: () {
          AutoRouter.of(context).navigate(ProductRoute(product: product));
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Image.network(
                      product.image,
                      // width: width * 0.8,
                      height: height * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(product.name,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                const Expanded(child: Text("")),
                Text(
                    (product.price * (1 - product.discount))
                            .toStringAsFixed(2) +
                        " " +
                        "EGP",
                    style: Theme.of(context).textTheme.headline6),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(product.price.toString() + context.tr.currency,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
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
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
