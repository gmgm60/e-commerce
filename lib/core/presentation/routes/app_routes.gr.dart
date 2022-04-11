// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../features/auth/presentation/pages/login_page.dart' as _i2;
import '../../../features/auth/presentation/pages/register_page.dart' as _i3;
import '../../../features/auth/presentation/pages/startup_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    StartupRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.StartupPage());
    },
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: 'LoginScreen', fullMatch: true),
        _i4.RouteConfig(StartupRoute.name, path: 'StartupScreen'),
        _i4.RouteConfig(LoginRoute.name, path: 'LoginScreen'),
        _i4.RouteConfig(RegisterRoute.name, path: 'RegisterScreen')
      ];
}

/// generated route for
/// [_i1.StartupPage]
class StartupRoute extends _i4.PageRouteInfo<void> {
  const StartupRoute() : super(StartupRoute.name, path: 'StartupScreen');

  static const String name = 'StartupRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'LoginScreen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i4.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'RegisterScreen');

  static const String name = 'RegisterRoute';
}
