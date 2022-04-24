import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/home_page/home_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/login_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/register_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/startup_page.dart';
import 'package:ecommerce/features/cart/presentation/pages/view_cart_page/view_cart_page.dart';
import 'package:ecommerce/features/categories/presentation/pages/category_page.dart';
import 'package:ecommerce/features/categories/presentation/pages/category_products_page.dart';
import 'package:ecommerce/features/favorites/presentation/pages/favorites_page/favorites_page.dart';
import 'package:ecommerce/features/merchants/presentation/pages/merchant_details/merchant_details_page.dart';
import 'package:ecommerce/features/merchants/presentation/pages/merchants_page/merchants_page.dart';
import 'package:ecommerce/features/orders/presentation/pages/orders_page/order_details_page.dart';
import 'package:ecommerce/features/orders/presentation/pages/orders_page/orders_page.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/presentation/pages/product_page/product_page.dart';
import 'package:ecommerce/features/products/presentation/pages/products_page/products_page.dart';
import 'package:ecommerce/features/profile/presentation/pages/profile_page.dart';
import 'package:ecommerce/features/profile/presentation/pages/update_profile_page.dart';
import 'package:flutter/material.dart';

import '../../../features/cart/presentation/pages/confirm_order_page/confirm_order_page.dart';

@CustomAutoRouter(
  // transitionsBuilder: viewCartAnimation,
  // durationInMilliseconds: 500,
  replaceInRouteName: 'Page,Route',
  routes: [
    // auth
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
    // Home
    CustomRoute(
      page: HomePage,
      path: 'HomePage',
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 500,
      children: [
        //ProductsPage
        CustomRoute(
          page: EmptyRouterPage,
          path: 'Products',
          name: 'Products',
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 500,
          children: [
            AutoRoute(page: ProductsPage, path: ''),
            CustomRoute(
              page: ProductPage,
              path: 'ProductPage',
              // transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
              customRouteBuilder: productAnimation,
              // durationInMilliseconds: 500,
            ),
          ],
        ),
        // cart
        AutoRoute(page: EmptyRouterPage,name: 'ViewCart', path: 'ViewCart', children: [
          AutoRoute(page: ViewCartPage, path: ""),
          AutoRoute(page: ConfirmOrderPage, path: "ConfirmOrderPage"),
        ]),

        // CustomRoute(page: ViewCartPage, path: "ViewCartPage"),
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
    // favorites

    AutoRoute(
      page: FavoritesPage,
      path: 'FavoritesPage',
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

Widget viewCartAnimation(BuildContext context, Animation animation,
    Animation animation2, Widget child) {
  const begin = Offset(1.0, 1.0);
  const end = Offset.zero;
  const curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}

productAnimation() {
  PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
    const begin = Offset(1.0, 1.0);
    const end = Offset.zero;
    const curve = Curves.ease;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: ProductPage(
          product: Product(
              discount: .1,
              name: '',
              description: '',
              catId: 1,
              price: 1,
              isAvailable: true,
              image: '',
              id: 1)),
    );
    // return ProductPage(product: product);
  });
}
