import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/home_page/home_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/forgot_passowrd_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/login_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/register_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/startup_page.dart';
import 'package:ecommerce/features/cart/presentation/pages/view_cart_page/view_cart_page.dart';
import 'package:ecommerce/features/categories/presentation/pages/category_page.dart';
import 'package:ecommerce/features/merchants/presentation/pages/merchants_page/merchants_page.dart';
import 'package:ecommerce/features/orders/presentation/pages/orders_page/orders_page.dart';
import 'package:ecommerce/features/products/presentation/pages/product_page/product_page.dart';
import 'package:ecommerce/features/products/presentation/pages/products_page/products_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: StartupPage,
      initial: true,
      path: 'StartupScreen',
    ),
    AutoRoute(
      page: LoginPage,
      path: 'LoginPage',
    ),
    AutoRoute(
      page: RegisterPage,
      path: 'RegisterPage',
    ),
    AutoRoute(
      page: HomePage,
      path: 'HomePage',
      children: [
        //ProductsPage
        AutoRoute(
          page: EmptyRouterPage,
          path: 'Products',
          name: 'Products',
          children: [
            AutoRoute(page: ProductsPage, path: ''),
            AutoRoute(page: ProductPage, path: 'ProductPage'),
          ],
        ),
        // cart
        AutoRoute(page: ViewCartPage, path: "ViewCartPage"),
        //order
        AutoRoute(
          page: OrdersPage,
          path: 'OrdersPage',
        ),
        AutoRoute(
          page: MerchantsPage,
          path: 'MerchantsPage',
        ),
        AutoRoute(
          page: CategoryPage,
          path: 'CategoryPage',
        ),
      ],
    ),
    AutoRoute(
      page: ForgotPasswordPage,
      path: 'ForgotPasswordPage',
    ),
  ],
)
class $AppRouter {}
