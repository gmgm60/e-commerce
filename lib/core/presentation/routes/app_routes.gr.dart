// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../../features/products/presentation/products_page/products_page.dart'
    as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    ProductsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ProductsPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: 'ProductsPage', fullMatch: true),
        _i2.RouteConfig(ProductsRoute.name, path: 'ProductsPage')
      ];
}

/// generated route for
/// [_i1.ProductsPage]
class ProductsRoute extends _i2.PageRouteInfo<void> {
  const ProductsRoute() : super(ProductsRoute.name, path: 'ProductsPage');

  static const String name = 'ProductsRoute';
}
