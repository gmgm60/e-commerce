import 'package:auto_route/annotations.dart';
import 'package:ecommerce/features/auth/presentation/pages/login_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/register_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/startup_page.dart';
import 'package:ecommerce/features/products/presentation/pages/product_page/product_page.dart';
import 'package:ecommerce/features/products/presentation/pages/products_page/products_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: StartupPage,
      path: 'StartupScreen',
    ),
    AutoRoute(
      page: LoginPage,
      path: 'LoginPage',
    ),
    AutoRoute(
      page: ProductPage,
      path: 'ProductPage',
    ),
    AutoRoute(
      page: ProductsPage,
      initial: true,
      path: 'ProductsPage',
    ),
    AutoRoute(
      page: RegisterPage,
      path: 'RegisterScreen',
    ),
  ],
)
class $AppRouter {}