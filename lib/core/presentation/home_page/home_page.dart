import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_drawer.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
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
          title: Text(titles[tabRouter.activeIndex]),
          actions: [
            if (AutoRouter.of(context).canPopSelfOrChildren)
              IconButton(
                  onPressed: scope.controller.popTop,
                  icon: const Icon(Icons.arrow_forward_ios)),
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
                icon:const Icon(Icons.home), label:context.tr.products),
             BottomNavigationBarItem(
                icon:const Icon(Icons.list), label: context.tr.orders),
             BottomNavigationBarItem(
                icon:const Icon(Icons.shopping_cart), label: context.tr.cart),

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
