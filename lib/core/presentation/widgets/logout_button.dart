import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: Builder(
          builder: (context) {
            return BlocBuilder<AuthCubit, AuthStates>(
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (_) {
                    AutoRouter.of(context).popUntilRoot();
                    AutoRouter.of(context).navigate(const StartupRoute());
                    return const SizedBox();
                  },
                  loading: (_) => const CircularProgressIndicator(),
                  orElse: () {
                    return IconButton(
                      onPressed: () {
                        BlocProvider.of<AuthCubit>(context).logout();
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowRightFromBracket,
                      ),);
                  },);
              },
            );
          }
      ),
    );
  }
}