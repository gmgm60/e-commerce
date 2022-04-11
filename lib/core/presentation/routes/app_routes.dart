import 'package:auto_route/annotations.dart';
import 'package:ecommerce/features/auth/presentation/pages/login_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/register_page.dart';
import 'package:ecommerce/features/auth/presentation/pages/startup_page.dart';

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
      path: 'LoginScreen',
    ),
    AutoRoute(
      page: RegisterPage,
      path: 'RegisterScreen',
    ),
  ],
)
class $AppRouter {}
