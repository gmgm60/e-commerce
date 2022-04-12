// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../../features/auth/presentation/pages/forgot_passowrd_page.dart'
    as _i8;
import '../../../features/auth/presentation/pages/login_page.dart' as _i2;
import '../../../features/auth/presentation/pages/register_page.dart' as _i5;
import '../../../features/auth/presentation/pages/startup_page.dart' as _i1;
import '../../../features/orders/presentation/pages/orders_page/orders_page.dart'
    as _i6;
import '../../../features/products/domain/entities/product/product.dart'
    as _i11;
import '../../../features/products/presentation/pages/product_page/product_page.dart'
    as _i3;
import '../../../features/products/presentation/pages/products_page/products_page.dart'
    as _i4;
import '../../../logout_page.dart' as _i7;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    StartupRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.StartupPage());
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ProductPage(key: args.key, product: args.product));
    },
    ProductsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProductsPage());
    },
    RegisterRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterPage());
    },
    OrdersRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.OrdersPage());
    },
    LogoutRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.LogoutPage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ForgotPasswordPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/', redirectTo: 'StartupScreen', fullMatch: true),
        _i9.RouteConfig(StartupRoute.name, path: 'StartupScreen'),
        _i9.RouteConfig(LoginRoute.name, path: 'LoginPage'),
        _i9.RouteConfig(ProductRoute.name, path: 'ProductPage'),
        _i9.RouteConfig(ProductsRoute.name, path: 'ProductsPage'),
        _i9.RouteConfig(RegisterRoute.name, path: 'RegisterPage'),
        _i9.RouteConfig(OrdersRoute.name, path: 'OrdersPage'),
        _i9.RouteConfig(LogoutRoute.name, path: 'LogoutPage'),
        _i9.RouteConfig(ForgotPasswordRoute.name, path: 'ForgotPasswordPage')
      ];
}

/// generated route for
/// [_i1.StartupPage]
class StartupRoute extends _i9.PageRouteInfo<void> {
  const StartupRoute() : super(StartupRoute.name, path: 'StartupScreen');

  static const String name = 'StartupRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'LoginPage');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.ProductPage]
class ProductRoute extends _i9.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({_i10.Key? key, required _i11.Product product})
      : super(ProductRoute.name,
            path: 'ProductPage',
            args: ProductRouteArgs(key: key, product: product));

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i10.Key? key;

  final _i11.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i4.ProductsPage]
class ProductsRoute extends _i9.PageRouteInfo<void> {
  const ProductsRoute() : super(ProductsRoute.name, path: 'ProductsPage');

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i5.RegisterPage]
class RegisterRoute extends _i9.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'RegisterPage');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i6.OrdersPage]
class OrdersRoute extends _i9.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: 'OrdersPage');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i7.LogoutPage]
class LogoutRoute extends _i9.PageRouteInfo<void> {
  const LogoutRoute() : super(LogoutRoute.name, path: 'LogoutPage');

  static const String name = 'LogoutRoute';
}

/// generated route for
/// [_i8.ForgotPasswordPage]
class ForgotPasswordRoute extends _i9.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: 'ForgotPasswordPage');

  static const String name = 'ForgotPasswordRoute';
}
