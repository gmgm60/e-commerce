import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartupPage extends StatelessWidget {
  const StartupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthStates>(
      listener: (context, state) {
        state.whenOrNull(loaded: () {
          AutoRouter.of(context).replace(const HomeRoute());
        }, error: (error) {
          AutoRouter.of(context).replace(const LoginRoute());
        });
      },
      child: const Scaffold(
        body: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
