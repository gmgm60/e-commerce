// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i13;

import '../../../features/auth/presentation/pages/forgot_passowrd_page.dart'
    as _i5;
import '../../../features/auth/presentation/pages/login_page.dart' as _i2;
import '../../../features/auth/presentation/pages/register_page.dart' as _i3;
import '../../../features/auth/presentation/pages/startup_page.dart' as _i1;
import '../../../features/cart/presentation/pages/view_cart_page/view_cart_page.dart'
    as _i7;
import '../../../features/categories/presentation/pages/category_page.dart'
    as _i10;
import '../../../features/merchants/presentation/pages/merchants_page/merchants_page.dart'
    as _i9;
import '../../../features/orders/presentation/pages/orders_page/orders_page.dart'
    as _i8;
import '../../../features/products/domain/entities/product/product.dart'
    as _i14;
import '../../../features/products/presentation/pages/product_page/product_page.dart'
    as _i12;
import '../../../features/products/presentation/pages/products_page/products_page.dart'
    as _i11;
import '../home_page/home_page.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    StartupRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.StartupPage());
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ForgotPasswordPage());
    },
    Products.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    ViewCartRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ViewCartPage());
    },
    OrdersRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.OrdersPage());
    },
    MerchantsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.MerchantsPage());
    },
    CategoryRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CategoryPage());
    },
    ProductsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ProductsPage());
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.ProductPage(key: args.key, product: args.product));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: 'StartupScreen', fullMatch: true),
        _i6.RouteConfig(StartupRoute.name, path: 'StartupScreen'),
        _i6.RouteConfig(LoginRoute.name, path: 'LoginPage'),
        _i6.RouteConfig(RegisterRoute.name, path: 'RegisterPage'),
        _i6.RouteConfig(HomeRoute.name, path: 'HomePage', children: [
          _i6.RouteConfig(Products.name,
              path: 'Products',
              parent: HomeRoute.name,
              children: [
                _i6.RouteConfig(ProductsRoute.name,
                    path: '', parent: Products.name),
                _i6.RouteConfig(ProductRoute.name,
                    path: 'ProductPage', parent: Products.name)
              ]),
          _i6.RouteConfig(ViewCartRoute.name,
              path: 'ViewCartPage', parent: HomeRoute.name),
          _i6.RouteConfig(OrdersRoute.name,
              path: 'OrdersPage', parent: HomeRoute.name),
          _i6.RouteConfig(MerchantsRoute.name,
              path: 'MerchantsPage', parent: HomeRoute.name),
          _i6.RouteConfig(CategoryRoute.name,
              path: 'CategoryPage', parent: HomeRoute.name)
        ]),
        _i6.RouteConfig(ForgotPasswordRoute.name, path: 'ForgotPasswordPage')
      ];
}

/// generated route for
/// [_i1.StartupPage]
class StartupRoute extends _i6.PageRouteInfo<void> {
  const StartupRoute() : super(StartupRoute.name, path: 'StartupScreen');

  static const String name = 'StartupRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'LoginPage');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'RegisterPage');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(HomeRoute.name, path: 'HomePage', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i6.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: 'ForgotPasswordPage');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class Products extends _i6.PageRouteInfo<void> {
  const Products({List<_i6.PageRouteInfo>? children})
      : super(Products.name, path: 'Products', initialChildren: children);

  static const String name = 'Products';
}

/// generated route for
/// [_i7.ViewCartPage]
class ViewCartRoute extends _i6.PageRouteInfo<void> {
  const ViewCartRoute() : super(ViewCartRoute.name, path: 'ViewCartPage');

  static const String name = 'ViewCartRoute';
}

/// generated route for
/// [_i8.OrdersPage]
class OrdersRoute extends _i6.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: 'OrdersPage');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i9.MerchantsPage]
class MerchantsRoute extends _i6.PageRouteInfo<void> {
  const MerchantsRoute() : super(MerchantsRoute.name, path: 'MerchantsPage');

  static const String name = 'MerchantsRoute';
}

/// generated route for
/// [_i10.CategoryPage]
class CategoryRoute extends _i6.PageRouteInfo<void> {
  const CategoryRoute() : super(CategoryRoute.name, path: 'CategoryPage');

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i11.ProductsPage]
class ProductsRoute extends _i6.PageRouteInfo<void> {
  const ProductsRoute() : super(ProductsRoute.name, path: '');

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i12.ProductPage]
class ProductRoute extends _i6.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({_i13.Key? key, required _i14.Product product})
      : super(ProductRoute.name,
            path: 'ProductPage',
            args: ProductRouteArgs(key: key, product: product));

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i13.Key? key;

  final _i14.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}
