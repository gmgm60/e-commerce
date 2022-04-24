import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_cubit.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_states.dart';
import 'package:ecommerce/features/categories/presentation/widgets/product_shimmer.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/core/presentation/widgets/product_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryProductsPage extends StatelessWidget {
  const CategoryProductsPage({Key? key, required this.catId}) : super(key: key);
  final int catId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            getIt<CategoryCubit>()..getCategoryProducts(catId: catId),
        child: BlocBuilder<CategoryCubit, CategoryStates>(
            builder: (context, state) {
          return state.maybeWhen(
              loading: () => const ProductShimmer(),
              error: (error) => Center(
                    child: Text(error),
                  ),
              productsLoaded: (products) => ProductsGrid(products: products),
              orElse: () => Container());
        }),
      ),
    );
  }
}

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({Key? key, required this.products}) : super(key: key);
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const BouncingScrollPhysics(),
      childAspectRatio: .6,
      children: List.generate(
        products.length,
        (index) => ProductGridItem(
          product: products[index],
        ),
      ),
    );
  }
}
