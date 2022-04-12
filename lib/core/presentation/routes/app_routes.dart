import 'package:auto_route/annotations.dart';
import 'package:ecommerce/features/auth/presentation/pages/forgot_passowrd_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/login_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/register_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/startup_page.dart';
import 'package:ecommerce/features/orders/presentation/pages/orders_page/orders_page.dart';
import 'package:ecommerce/logout_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: StartupPage,
      path: 'StartupScreen',
    ),
    AutoRoute(
      page: LoginPage,
      initial: true,
      path: 'LoginPage',
    ),
    AutoRoute(
      page: RegisterPage,
      path: 'RegisterPage',
    ),
    AutoRoute(
      page: OrdersPage,
      path: 'OrdersPage',
    ),
    AutoRoute(
      page: LogoutPage,
      path: 'LogoutPage',
    ),
    AutoRoute(
      page: ForgotPasswordPage,
      path: 'ForgotPasswordPage',
    ),
  ],
)
class $AppRouter {}
