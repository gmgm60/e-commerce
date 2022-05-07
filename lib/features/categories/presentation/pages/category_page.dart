import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_empty_widget.dart';
import 'package:ecommerce/core/presentation/widgets/app_error_widget.dart';
import 'package:ecommerce/core/presentation/widgets/list_shimmer.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';
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
              loading: () => const ListShimmer(),
              error: (error) => AppErrorWidget(error: error),
              categoryLoaded: (categories) => categories.isNotEmpty
                  ? RefreshIndicator(
                      onRefresh: () => BlocProvider.of<CategoryCubit>(context)
                          .getCategories(),
                      child: CategoryList(categories: categories))
                  : const AppEmptyWidget(),
              orElse: () => Container());
        }),
      ),
    );
  }
}

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key, required this.categories}) : super(key: key);
  final List<ProductsCategory> categories;

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _addCategories();
    });
  }

  void _addCategories() async {
    for (var _ in widget.categories) {
      await Future.delayed(const Duration(milliseconds: 200));
      _counter = _counter + 1;
      _listKey.currentState!.insertItem(_counter - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: _listKey,
      padding: const EdgeInsets.all(16),
      initialItemCount: _counter,
      itemBuilder: (context, index, animation) => SlideTransition(
        child: CategoryItem(
          category: widget.categories[index],
          onTap: () {
            AutoRouter.of(context).navigate(
                CategoryProductsRoute(catId: widget.categories[index].id));
          },
        ),
        position: animation.drive(
            Tween<Offset>(begin: const Offset(1, 0), end: const Offset(0, 0))),
      ),
    );
  }
}
