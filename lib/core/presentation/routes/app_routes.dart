
import 'package:auto_route/annotations.dart';
import 'package:ecommerce/features/auth/presentation/pages/start_page/start_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: StartPage,
      initial: true,
      path: 'StartPage',
    ),

  ],
)
class $AppRouter {}