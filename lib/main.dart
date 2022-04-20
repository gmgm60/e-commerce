import 'package:ecommerce/core/features/locale/presentation/bloc/locale_cubit/locale_cubit.dart';
import 'package:ecommerce/core/features/locale/presentation/bloc/locale_cubit/locale_states.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/theme/theme_light.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/presentation/cubit/back_button_cubit/back_button_cubit.dart';
import 'di/injectable.dart';
import 'features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(environment: InjectInv.localMock);
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
        BlocProvider(
          create: (context) => getIt<LocaleCubit>()..getLocalization(),
        ),
        BlocProvider(
          create: (context) => getIt<FavoritesCubit>()..getFavorites(),
        ),
        BlocProvider(
          create: (context) => getIt<BackButtonCubit>(),
        ),
      ],
      child: BlocBuilder<LocaleCubit, LocaleStates>(
        builder: (context, state) => MaterialApp.router(
          debugShowCheckedModeBanner: false,

          locale: BlocProvider.of<LocaleCubit>(context).locale,
          supportedLocales: AppLocalizations.supportedLocales,
          title: "E-Commerce App",
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          theme: themeLight,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),

        ),
      ),
    );
  }
}