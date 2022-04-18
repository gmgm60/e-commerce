import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_cubit.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_states.dart';
import 'package:ecommerce/features/products/presentation/pages/products_page/products_page.dart';
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
              loading: () => const AppProgressIndicator(),
              error: (error) => Center(
                    child: Text(error),
                  ),
              productsLoaded: (products) => GridView.count(
                    crossAxisCount: 2,
                    physics: const BouncingScrollPhysics(),
                    childAspectRatio: .6,
                    children: List.generate(
                      products.length,
                      (index) => ProductRow(
                        product: products[index],
                      ),
                    ),
                  ),
              orElse: () => Container());
        }),
      ),
    );
  }
}
