import 'package:auto_route/annotations.dart';
import 'package:ecommerce/features/auth/presentation/pages/start_page/start_page.dart';
import 'package:ecommerce/features/products/presentation/products_page/products_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: ProductsPage,
      initial: true,
      path: 'ProductsPage',
    ),

  ],
)
class $AppRouter {}