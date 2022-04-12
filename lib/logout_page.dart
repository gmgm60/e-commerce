import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(end: 10),
          child: BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: BlocConsumer<AuthCubit, AuthStates>(
                listener: (context, state) {
                  state.whenOrNull(
                      loaded: () => AutoRouter.of(context).replace(const LoginRoute()),
                      error: (error) => ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                          content: Text(error))));
                }, builder: (context, state) {
              return state.maybeWhen(
                loading: () => const AppProgressIndicator(),
                loaded: () => const AppProgressIndicator(),
                orElse: () => IconButton(
                  onPressed: () {
                    BlocProvider.of<AuthCubit>(context).logout();
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.arrowRightFromBracket,
                  ),),);
            }),
          ),
        ),
      ),
    );
  }
}
