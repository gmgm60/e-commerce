// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i15;

import '../../../features/auth/presentation/pages/forgot_password_page.dart'
    as _i5;
import '../../../features/auth/presentation/pages/login_page.dart' as _i2;
import '../../../features/auth/presentation/pages/register_page.dart' as _i3;
import '../../../features/auth/presentation/pages/startup_page.dart' as _i1;
import '../../../features/cart/presentation/pages/view_cart_page/view_cart_page.dart'
    as _i8;
import '../../../features/categories/presentation/pages/category_page.dart'
    as _i10;
import '../../../features/merchants/domain/entities/merchant.dart' as _i17;
import '../../../features/merchants/presentation/pages/merchant_details/merchant_details_page.dart'
    as _i14;
import '../../../features/merchants/presentation/pages/merchants_page/merchants_page.dart'
    as _i13;
import '../../../features/orders/presentation/pages/orders_page/orders_page.dart'
    as _i9;
import '../../../features/products/domain/entities/product/product.dart'
    as _i16;
import '../../../features/products/presentation/pages/product_page/product_page.dart'
    as _i12;
import '../../../features/products/presentation/pages/products_page/products_page.dart'
    as _i11;
import '../../../features/profile/presentation/pages/profile_page.dart' as _i6;
import '../home_page/home_page.dart' as _i4;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    StartupRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.StartupPage());
    },
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterPage());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ForgotPasswordPage());
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    },
    Products.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    ViewCartRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ViewCartPage());
    },
    OrdersRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.OrdersPage());
    },
    Merchants.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    CategoryRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CategoryPage());
    },
    ProductsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ProductsPage());
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.ProductPage(key: args.key, product: args.product));
    },
    MerchantsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.MerchantsPage());
    },
    MerchantDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MerchantDetailsRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i14.MerchantDetailsPage(key: args.key, merchant: args.merchant));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: 'StartupScreen', fullMatch: true),
        _i7.RouteConfig(StartupRoute.name, path: 'StartupScreen'),
        _i7.RouteConfig(LoginRoute.name, path: 'LoginPage'),
        _i7.RouteConfig(RegisterRoute.name, path: 'RegisterPage'),
        _i7.RouteConfig(HomeRoute.name, path: 'HomePage', children: [
          _i7.RouteConfig(Products.name,
              path: 'Products',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig(ProductsRoute.name,
                    path: '', parent: Products.name),
                _i7.RouteConfig(ProductRoute.name,
                    path: 'ProductPage', parent: Products.name)
              ]),
          _i7.RouteConfig(ViewCartRoute.name,
              path: 'ViewCartPage', parent: HomeRoute.name),
          _i7.RouteConfig(OrdersRoute.name,
              path: 'OrdersPage', parent: HomeRoute.name),
          _i7.RouteConfig(Merchants.name,
              path: 'Merchants',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig(MerchantsRoute.name,
                    path: '', parent: Merchants.name),
                _i7.RouteConfig(MerchantDetailsRoute.name,
                    path: 'MerchantDetailsPage', parent: Merchants.name)
              ]),
          _i7.RouteConfig(CategoryRoute.name,
              path: 'CategoryPage', parent: HomeRoute.name)
        ]),
        _i7.RouteConfig(ForgotPasswordRoute.name, path: 'ForgotPasswordPage'),
        _i7.RouteConfig(ProfileRoute.name, path: 'ProfilePage')
      ];
}

/// generated route for
/// [_i1.StartupPage]
class StartupRoute extends _i7.PageRouteInfo<void> {
  const StartupRoute() : super(StartupRoute.name, path: 'StartupScreen');

  static const String name = 'StartupRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'LoginPage');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'RegisterPage');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeRoute.name, path: 'HomePage', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i7.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: 'ForgotPasswordPage');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'ProfilePage');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.EmptyRouterPage]
class Products extends _i7.PageRouteInfo<void> {
  const Products({List<_i7.PageRouteInfo>? children})
      : super(Products.name, path: 'Products', initialChildren: children);

  static const String name = 'Products';
}

/// generated route for
/// [_i8.ViewCartPage]
class ViewCartRoute extends _i7.PageRouteInfo<void> {
  const ViewCartRoute() : super(ViewCartRoute.name, path: 'ViewCartPage');

  static const String name = 'ViewCartRoute';
}

/// generated route for
/// [_i9.OrdersPage]
class OrdersRoute extends _i7.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: 'OrdersPage');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i7.EmptyRouterPage]
class Merchants extends _i7.PageRouteInfo<void> {
  const Merchants({List<_i7.PageRouteInfo>? children})
      : super(Merchants.name, path: 'Merchants', initialChildren: children);

  static const String name = 'Merchants';
}

/// generated route for
/// [_i10.CategoryPage]
class CategoryRoute extends _i7.PageRouteInfo<void> {
  const CategoryRoute() : super(CategoryRoute.name, path: 'CategoryPage');

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i11.ProductsPage]
class ProductsRoute extends _i7.PageRouteInfo<void> {
  const ProductsRoute() : super(ProductsRoute.name, path: '');

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i12.ProductPage]
class ProductRoute extends _i7.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({_i15.Key? key, required _i16.Product product})
      : super(ProductRoute.name,
            path: 'ProductPage',
            args: ProductRouteArgs(key: key, product: product));

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i15.Key? key;

  final _i16.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i13.MerchantsPage]
class MerchantsRoute extends _i7.PageRouteInfo<void> {
  const MerchantsRoute() : super(MerchantsRoute.name, path: '');

  static const String name = 'MerchantsRoute';
}

/// generated route for
/// [_i14.MerchantDetailsPage]
class MerchantDetailsRoute extends _i7.PageRouteInfo<MerchantDetailsRouteArgs> {
  MerchantDetailsRoute({_i15.Key? key, required _i17.Merchant merchant})
      : super(MerchantDetailsRoute.name,
            path: 'MerchantDetailsPage',
            args: MerchantDetailsRouteArgs(key: key, merchant: merchant));

  static const String name = 'MerchantDetailsRoute';
}

class MerchantDetailsRouteArgs {
  const MerchantDetailsRouteArgs({this.key, required this.merchant});

  final _i15.Key? key;

  final _i17.Merchant merchant;

  @override
  String toString() {
    return 'MerchantDetailsRouteArgs{key: $key, merchant: $merchant}';
  }
}
