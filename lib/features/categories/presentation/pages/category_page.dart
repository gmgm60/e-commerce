import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/core/presentation/widgets/app_drawer.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_cubit.dart';
import 'package:ecommerce/features/categories/presentation/bloc/category_cubit/category_states.dart';
import 'package:ecommerce/l10n/l10n.dart';
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
              loaded: (categories) => ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) => ListTile(
                        leading: AppNetworkImage(url: categories[index].image),
                        title: Text(categories[index].name),
                      )),
              orElse: () => Container());
        }),
      ),
    );
  }
}
