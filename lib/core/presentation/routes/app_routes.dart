import 'package:auto_route/annotations.dart';
import 'package:ecommerce/features/auth/presentation/pages/forgot_passowrd_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/login_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/register_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/startup_page.dart';
import 'package:ecommerce/features/categories/presentation/pages/category_page.dart';
import 'package:ecommerce/features/merchants/presentation/pages/merchants_page/merchants_page.dart';
import 'package:ecommerce/features/orders/presentation/pages/orders_page/orders_page.dart';
import 'package:ecommerce/features/products/presentation/pages/product_page/product_page.dart';
import 'package:ecommerce/features/products/presentation/pages/products_page/products_page.dart';
import 'package:ecommerce/logout_page.dart';

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
    AutoRoute(page: ProductsPage, path: 'ProductsPage'),
    AutoRoute(
      page: RegisterPage,
      path: 'RegisterPage',
    ),
    AutoRoute(
      page: OrdersPage,
      path: 'OrdersPage',
    ),
    AutoRoute(
      page: MerchantsPage,
      path: 'MerchantsPage',
    ),
    AutoRoute(
      initial: true,
      page: CategoryPage,
      path: 'CategoryPage',
    ),
    AutoRoute(
      page: LogoutPage,
      path: 'LogoutPage',
    ),
    AutoRoute(
      page: ForgotPasswordPage,
      path: 'ForgotPasswordPage',
    ),
  ],
)
class $AppRouter {}
