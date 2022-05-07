import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/widgets/product_grid_item.dart';
import 'package:ecommerce/features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart';
import 'package:ecommerce/features/favorites/presentation/pages/favorites_page/no_favorites.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(context.tr.favoritesList),
          leading: const SizedBox.shrink(),
          actions: [
            IconButton(
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
                icon: const Icon(Icons.arrow_forward_ios))
          ]),
      body: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          return context.read<FavoritesCubit>().favorites.isEmpty
              ? const NoFavorites()
              : RefreshIndicator(
                  onRefresh: () async {
                    await context.read<FavoritesCubit>().getFavorites();
                  },
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      GridView.count(
                        primary: false,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        crossAxisCount: 2,
                        childAspectRatio: .6,
                        children: context
                            .read<FavoritesCubit>()
                            .favorites
                            .values
                            .map((favoriteItem) => ProductGridItem(
                                  product: favoriteItem.product,
                                  showAppBar: true,
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
