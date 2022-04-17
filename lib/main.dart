import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/theme/theme_light.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'di/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CartCubit>()//..getCart(),
        ),

      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        supportedLocales: AppLocalizations.supportedLocales,
        title: "E-Commerce App",
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        theme: themeLight,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
