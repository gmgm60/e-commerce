import 'package:ecommerce/core/presentation/widgets/product_grid_item.dart';
import 'package:ecommerce/core/presentation/widgets/product_shimmer.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_cubit.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<ProductsCubit>().getProducts();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          return state.maybeMap(
              init: (_) => const ProductShimmer(),
              loading: (_) => const ProductShimmer(),
              // done: (_) =>
              //     GridView.count(
              //       physics: const BouncingScrollPhysics(),
              //       crossAxisCount: 2,
              //       childAspectRatio: .6,
              //       children: context
              //           .read<ProductsCubit>()
              //           .products
              //           .map((product) => ProductGridItem(product: product))
              //           .toList(),
              //     ),
              error: (error) => Center(child: Text(error.error)),
              orElse: () =>
                  GridView.count(
                    physics: const BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: .6,
                    children: context
                        .read<ProductsCubit>()
                        .products
                        .map((product) => ProductGridItem(product: product))
                        .toList(),
                  ),
          );
        },
      ),
    );
  }
}
