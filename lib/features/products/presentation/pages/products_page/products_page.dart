
import 'package:ecommerce/core/presentation/widgets/product_grid_item.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_cubit.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_state.dart';
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
             return state.map(
                init: (_) => const Center(child: CircularProgressIndicator()),
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                done: (_) => GridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: .6,
                  children: context
                      .read<ProductsCubit>()
                      .products
                      .map((product) => ProductGridItem(product: product))
                      .toList(),
                ),
                error: (error) => Center(child: Text(error.error)),
              );
            },
          ),
        );
      }),
    );
  }
}


