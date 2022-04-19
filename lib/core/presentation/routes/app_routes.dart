import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/home_page/home_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/login_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/register_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/startup_page.dart';
import 'package:ecommerce/features/cart/presentation/pages/view_cart_page/view_cart_page.dart';
import 'package:ecommerce/features/categories/presentation/pages/category_page.dart';
import 'package:ecommerce/features/categories/presentation/pages/category_products_page.dart';
import 'package:ecommerce/features/merchants/presentation/pages/merchant_details/merchant_details_page.dart';
import 'package:ecommerce/features/merchants/presentation/pages/merchants_page/merchants_page.dart';
import 'package:ecommerce/features/orders/presentation/pages/orders_page/order_details_page.dart';
import 'package:ecommerce/features/orders/presentation/pages/orders_page/orders_page.dart';
import 'package:ecommerce/features/products/presentation/pages/product_page/product_page.dart';
import 'package:ecommerce/features/products/presentation/pages/products_page/products_page.dart';
import 'package:ecommerce/features/profile/presentation/pages/profile_page.dart';
import 'package:ecommerce/features/profile/presentation/pages/update_profile_page.dart';

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
          page: EmptyRouterPage,
          path: 'Orders',
          name: 'Orders',
          children: [
            AutoRoute(page: OrdersPage, path: ''),
            AutoRoute(page: OrderDetailsPage, path: 'OrderDetailsPage'),
            AutoRoute(page: ProductPage, path: 'ProductPage'),
          ],
        ),
        // merchants
        AutoRoute(
          page: EmptyRouterPage,
          path: 'Merchants',
          name: 'Merchants',
          children: [
            AutoRoute(page: MerchantsPage, path: ''),
            AutoRoute(page: MerchantDetailsPage, path: 'MerchantDetailsPage'),
          ],
        ),
        // categories
        AutoRoute(
          page: EmptyRouterPage,
          path: 'category',
          name: 'category',
          children: [
            AutoRoute(page: CategoryPage, path: ''),
            AutoRoute(page: CategoryProductsPage, path: 'CategoryProductsPage'),
            AutoRoute(page: ProductPage, path: 'ProductPage'),
          ],
        ),
      ],
    ),
    // forgot password
    AutoRoute(
      page: ForgotPasswordPage,
      path: 'ForgotPasswordPage',
    ),
    // Profile
    AutoRoute(
      page: ProfilePage,
      path: 'ProfilePage',
    ),
    AutoRoute(
      page: UpdateProfilePage,
      path: 'UpdateProfilePage',
    ),
  ],
)
class $AppRouter {}
