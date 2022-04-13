import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/logout_button.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getIt<Logger>().v("open home");

    return AutoTabsScaffold(
      routes: const [
        Products(),
        OrdersRoute(),
        ViewCartRoute(),
        CategoryRoute(),
        MerchantsRoute()
      ],
      appBarBuilder: (_, __) {
        return AppBar(
          actions: const [
            LogoutButton(),
          ],
        );
      },
      bottomNavigationBuilder: (BuildContext context, tabRoute) {
        return BottomNavigationBar(
          onTap: tabRoute.setActiveIndex,
          currentIndex: tabRoute.activeIndex,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            const BottomNavigationBarItem(
                icon:  Icon(Icons.list), label: "Orders"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
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
