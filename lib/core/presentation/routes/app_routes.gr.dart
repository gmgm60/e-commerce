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
import 'package:flutter/material.dart' as _i7;

import '../../../features/auth/presentation/pages/login_page.dart' as _i2;
import '../../../features/auth/presentation/pages/register_page.dart' as _i5;
import '../../../features/auth/presentation/pages/startup_page.dart' as _i1;
import '../../../features/products/domain/entities/product/product.dart' as _i8;
import '../../../features/products/presentation/pages/product_page/product_page.dart'
    as _i3;
import '../../../features/products/presentation/pages/products_page/products_page.dart'
    as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
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
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ProductPage(key: args.key, product: args.product));
    },
    ProductsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProductsPage());
    },
    RegisterRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: 'ProductsPage', fullMatch: true),
        _i6.RouteConfig(StartupRoute.name, path: 'StartupScreen'),
        _i6.RouteConfig(LoginRoute.name, path: 'LoginPage'),
        _i6.RouteConfig(ProductRoute.name, path: 'ProductPage'),
        _i6.RouteConfig(ProductsRoute.name, path: 'ProductsPage'),
        _i6.RouteConfig(RegisterRoute.name, path: 'RegisterScreen')
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
/// [_i3.ProductPage]
class ProductRoute extends _i6.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({_i7.Key? key, required _i8.Product product})
      : super(ProductRoute.name,
            path: 'ProductPage',
            args: ProductRouteArgs(key: key, product: product));

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i7.Key? key;

  final _i8.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i4.ProductsPage]
class ProductsRoute extends _i6.PageRouteInfo<void> {
  const ProductsRoute() : super(ProductsRoute.name, path: 'ProductsPage');

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i5.RegisterPage]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'RegisterScreen');

  static const String name = 'RegisterRoute';
}
