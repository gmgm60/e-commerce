import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/cubit/back_button_cubit/back_button_cubit.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_drawer.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:ecommerce/features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getIt<Logger>().v("open home");

    List<String> titles = [
      context.tr.productsTitle,
      context.tr.ordersTitle,
      context.tr.yourCart,
      context.tr.categories,
      context.tr.merchants,
    ];

    List<PageRouteInfo> routes = const [
      Products(),
      Orders(),
      ViewCartRoute(),
      Category(),
      Merchants(),
    ];
    return AutoTabsScaffold(
      routes: routes,
      appBarBuilder: (context, tabRouter) {
        final scope = RouterScope.of(context, watch: true);
        return AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocBuilder<FavoritesCubit, FavoritesState>(
                builder: (context, state) {
                  final favoriteCubit = context.read<FavoritesCubit>();
                  return IconButton(
                      onPressed: () {
                        AutoRouter.of(context).navigate(const FavoritesRoute());
                      },
                      icon: favoriteCubit.favorites.isEmpty
                          ? const Icon(
                              Icons.favorite,
                              size: 40,
                              color: Colors.black12,
                            )
                          : Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                const Icon(
                                  Icons.favorite,
                                  size: 40,
                                  color: Colors.red,
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.black12,
                                    maxRadius: 10,
                                    child: Text(
                                        favoriteCubit.favorites.length
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            ?.copyWith(color: Colors.white))),
                              ],
                            ));
                },
              ),
              const Expanded(child: SizedBox(), flex: 2),
              Text(titles[tabRouter.activeIndex]),
              const Expanded(child: SizedBox(), flex: 5),
            ],
          ),
          actions: [
            BlocBuilder<BackButtonCubit, BackButtonState>(
              builder: (context, state) {
                if (AutoRouter.of(context).canPopSelfOrChildren) {
                  return IconButton(
                      onPressed: () {
                        scope.controller.popTop();
                        context.read<BackButtonCubit>().refresh();
                      },
                      icon: const Icon(Icons.arrow_forward_ios));
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ],
        );
      },
      drawer: const AppDrawer(),
      bottomNavigationBuilder: (BuildContext context, tabRoute) {
        return BottomNavigationBar(
          onTap: tabRoute.setActiveIndex,
          currentIndex: tabRoute.activeIndex,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home), label: context.tr.products),
            BottomNavigationBarItem(
                icon: const Icon(Icons.list), label: context.tr.orders),
            BottomNavigationBarItem(
                icon: BlocBuilder<CartCubit, CartState>(
                  builder: (context, state) {
                    final cartCubit = context.read<CartCubit>();
                    return Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        const SizedBox(width: 40,child: Icon(Icons.shopping_cart)),
                        CircleAvatar(
                            backgroundColor: Colors.black26,
                            maxRadius: 10,
                            child: Text(
                                cartCubit.totalCount()
                                    .toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(color: Colors.white))),
                      ],
                    );
                  },
                ),
                label: context.tr.cart),
            BottomNavigationBarItem(
                icon: const Icon(Icons.category), label: context.tr.categories),
            BottomNavigationBarItem(
                icon: const Icon(Icons.people), label: context.tr.merchants),
          ],
        );
      },
    );
  }
}
