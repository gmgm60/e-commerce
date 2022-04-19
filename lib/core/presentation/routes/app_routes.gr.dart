// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i18;

import '../../../features/auth/domain/entities/user.dart' as _i19;
import '../../../features/auth/presentation/pages/forgot_password_page.dart'
    as _i5;
import '../../../features/auth/presentation/pages/login_page.dart' as _i2;
import '../../../features/auth/presentation/pages/register_page.dart' as _i3;
import '../../../features/auth/presentation/pages/startup_page.dart' as _i1;
import '../../../features/cart/presentation/pages/view_cart_page/view_cart_page.dart'
    as _i9;
import '../../../features/categories/presentation/pages/category_page.dart'
    as _i16;
import '../../../features/categories/presentation/pages/category_products_page.dart'
    as _i17;
import '../../../features/merchants/domain/entities/merchant.dart' as _i22;
import '../../../features/merchants/presentation/pages/merchant_details/merchant_details_page.dart'
    as _i15;
import '../../../features/merchants/presentation/pages/merchants_page/merchants_page.dart'
    as _i14;
import '../../../features/orders/domain/entities/order.dart' as _i21;
import '../../../features/orders/presentation/pages/orders_page/order_details_page.dart'
    as _i13;
import '../../../features/orders/presentation/pages/orders_page/orders_page.dart'
    as _i12;
import '../../../features/products/domain/entities/product/product.dart'
    as _i20;
import '../../../features/products/presentation/pages/product_page/product_page.dart'
    as _i11;
import '../../../features/products/presentation/pages/products_page/products_page.dart'
    as _i10;
import '../../../features/profile/presentation/pages/profile_page.dart' as _i6;
import '../../../features/profile/presentation/pages/update_profile_page.dart'
    as _i7;
import '../home_page/home_page.dart' as _i4;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    StartupRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.StartupPage());
    },
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterPage());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ForgotPasswordPage());
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    },
    UpdateProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfileRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.UpdateProfilePage(key: args.key, user: args.user));
    },
    Products.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    ViewCartRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ViewCartPage());
    },
    Orders.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    Merchants.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    Category.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    ProductsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ProductsPage());
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.ProductPage(key: args.key, product: args.product));
    },
    OrdersRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.OrdersPage());
    },
    OrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.OrderDetailsPage(key: args.key, order: args.order));
    },
    MerchantsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.MerchantsPage());
    },
    MerchantDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MerchantDetailsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i15.MerchantDetailsPage(key: args.key, merchant: args.merchant));
    },
    CategoryRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.CategoryPage());
    },
    CategoryProductsRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryProductsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i17.CategoryProductsPage(key: args.key, catId: args.catId));
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: 'StartupScreen', fullMatch: true),
        _i8.RouteConfig(StartupRoute.name, path: 'StartupScreen'),
        _i8.RouteConfig(LoginRoute.name, path: 'LoginPage'),
        _i8.RouteConfig(RegisterRoute.name, path: 'RegisterPage'),
        _i8.RouteConfig(HomeRoute.name, path: 'HomePage', children: [
          _i8.RouteConfig(Products.name,
              path: 'Products',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(ProductsRoute.name,
                    path: '', parent: Products.name),
                _i8.RouteConfig(ProductRoute.name,
                    path: 'ProductPage', parent: Products.name)
              ]),
          _i8.RouteConfig(ViewCartRoute.name,
              path: 'ViewCartPage', parent: HomeRoute.name),
          _i8.RouteConfig(Orders.name,
              path: 'Orders',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(OrdersRoute.name,
                    path: '', parent: Orders.name),
                _i8.RouteConfig(OrderDetailsRoute.name,
                    path: 'OrderDetailsPage', parent: Orders.name),
                _i8.RouteConfig(ProductRoute.name,
                    path: 'ProductPage', parent: Orders.name)
              ]),
          _i8.RouteConfig(Merchants.name,
              path: 'Merchants',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(MerchantsRoute.name,
                    path: '', parent: Merchants.name),
                _i8.RouteConfig(MerchantDetailsRoute.name,
                    path: 'MerchantDetailsPage', parent: Merchants.name)
              ]),
          _i8.RouteConfig(Category.name,
              path: 'category',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(CategoryRoute.name,
                    path: '', parent: Category.name),
                _i8.RouteConfig(CategoryProductsRoute.name,
                    path: 'CategoryProductsPage', parent: Category.name),
                _i8.RouteConfig(ProductRoute.name,
                    path: 'ProductPage', parent: Category.name)
              ])
        ]),
        _i8.RouteConfig(ForgotPasswordRoute.name, path: 'ForgotPasswordPage'),
        _i8.RouteConfig(ProfileRoute.name, path: 'ProfilePage'),
        _i8.RouteConfig(UpdateProfileRoute.name, path: 'UpdateProfilePage')
      ];
}

/// generated route for
/// [_i1.StartupPage]
class StartupRoute extends _i8.PageRouteInfo<void> {
  const StartupRoute() : super(StartupRoute.name, path: 'StartupScreen');

  static const String name = 'StartupRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'LoginPage');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'RegisterPage');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeRoute.name, path: 'HomePage', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i8.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: 'ForgotPasswordPage');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'ProfilePage');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.UpdateProfilePage]
class UpdateProfileRoute extends _i8.PageRouteInfo<UpdateProfileRouteArgs> {
  UpdateProfileRoute({_i18.Key? key, required _i19.User user})
      : super(UpdateProfileRoute.name,
            path: 'UpdateProfilePage',
            args: UpdateProfileRouteArgs(key: key, user: user));

  static const String name = 'UpdateProfileRoute';
}

class UpdateProfileRouteArgs {
  const UpdateProfileRouteArgs({this.key, required this.user});

  final _i18.Key? key;

  final _i19.User user;

  @override
  String toString() {
    return 'UpdateProfileRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i8.EmptyRouterPage]
class Products extends _i8.PageRouteInfo<void> {
  const Products({List<_i8.PageRouteInfo>? children})
      : super(Products.name, path: 'Products', initialChildren: children);

  static const String name = 'Products';
}

/// generated route for
/// [_i9.ViewCartPage]
class ViewCartRoute extends _i8.PageRouteInfo<void> {
  const ViewCartRoute() : super(ViewCartRoute.name, path: 'ViewCartPage');

  static const String name = 'ViewCartRoute';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class Orders extends _i8.PageRouteInfo<void> {
  const Orders({List<_i8.PageRouteInfo>? children})
      : super(Orders.name, path: 'Orders', initialChildren: children);

  static const String name = 'Orders';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class Merchants extends _i8.PageRouteInfo<void> {
  const Merchants({List<_i8.PageRouteInfo>? children})
      : super(Merchants.name, path: 'Merchants', initialChildren: children);

  static const String name = 'Merchants';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class Category extends _i8.PageRouteInfo<void> {
  const Category({List<_i8.PageRouteInfo>? children})
      : super(Category.name, path: 'category', initialChildren: children);

  static const String name = 'Category';
}

/// generated route for
/// [_i10.ProductsPage]
class ProductsRoute extends _i8.PageRouteInfo<void> {
  const ProductsRoute() : super(ProductsRoute.name, path: '');

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i11.ProductPage]
class ProductRoute extends _i8.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({_i18.Key? key, required _i20.Product product})
      : super(ProductRoute.name,
            path: 'ProductPage',
            args: ProductRouteArgs(key: key, product: product));

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i18.Key? key;

  final _i20.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i12.OrdersPage]
class OrdersRoute extends _i8.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: '');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i13.OrderDetailsPage]
class OrderDetailsRoute extends _i8.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({_i18.Key? key, required _i21.Order order})
      : super(OrderDetailsRoute.name,
            path: 'OrderDetailsPage',
            args: OrderDetailsRouteArgs(key: key, order: order));

  static const String name = 'OrderDetailsRoute';
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({this.key, required this.order});

  final _i18.Key? key;

  final _i21.Order order;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i14.MerchantsPage]
class MerchantsRoute extends _i8.PageRouteInfo<void> {
  const MerchantsRoute() : super(MerchantsRoute.name, path: '');

  static const String name = 'MerchantsRoute';
}

/// generated route for
/// [_i15.MerchantDetailsPage]
class MerchantDetailsRoute extends _i8.PageRouteInfo<MerchantDetailsRouteArgs> {
  MerchantDetailsRoute({_i18.Key? key, required _i22.Merchant merchant})
      : super(MerchantDetailsRoute.name,
            path: 'MerchantDetailsPage',
            args: MerchantDetailsRouteArgs(key: key, merchant: merchant));

  static const String name = 'MerchantDetailsRoute';
}

class MerchantDetailsRouteArgs {
  const MerchantDetailsRouteArgs({this.key, required this.merchant});

  final _i18.Key? key;

  final _i22.Merchant merchant;

  @override
  String toString() {
    return 'MerchantDetailsRouteArgs{key: $key, merchant: $merchant}';
  }
}

/// generated route for
/// [_i16.CategoryPage]
class CategoryRoute extends _i8.PageRouteInfo<void> {
  const CategoryRoute() : super(CategoryRoute.name, path: '');

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i17.CategoryProductsPage]
class CategoryProductsRoute
    extends _i8.PageRouteInfo<CategoryProductsRouteArgs> {
  CategoryProductsRoute({_i18.Key? key, required int catId})
      : super(CategoryProductsRoute.name,
            path: 'CategoryProductsPage',
            args: CategoryProductsRouteArgs(key: key, catId: catId));

  static const String name = 'CategoryProductsRoute';
}

class CategoryProductsRouteArgs {
  const CategoryProductsRouteArgs({this.key, required this.catId});

  final _i18.Key? key;

  final int catId;

  @override
  String toString() {
    return 'CategoryProductsRouteArgs{key: $key, catId: $catId}';
  }
}
