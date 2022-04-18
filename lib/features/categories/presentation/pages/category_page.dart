import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_cubit.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_states.dart';
import 'package:ecommerce/features/categories/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<CategoryCubit>()..getCategories(),
        child: BlocBuilder<CategoryCubit, CategoryStates>(
            builder: (context, state) {
          return state.maybeWhen(
              loading: () => const AppProgressIndicator(),
              error: (error) => Center(
                    child: Text(error),
                  ),
              categoryLoaded: (categories) => ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: categories.length,
                    itemBuilder: (context, index) => CategoryItem(
                      category: categories[index],
                      onTap: () {
                        AutoRouter.of(context).navigate(
                            CategoryProductsRoute(catId: categories[index].id));
                      },
                    ),
                  ),
              orElse: () => Container());
        }),
      ),
    );
  }
}
