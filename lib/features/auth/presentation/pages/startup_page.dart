import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({Key? key}) : super(key: key);

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  late final AuthCubit _authCubit;

  @override
  void initState() {
    super.initState();
    _authCubit = getIt<AuthCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _authCubit..getToken(),
      child: BlocListener<AuthCubit, AuthStates>(
        listener: (context, state) {
          state.whenOrNull(
              loaded: () {
                AutoRouter.of(context).replace(const HomeRoute());
              },
          error: (error) {
                AutoRouter.of(context).replace(const LoginRoute());
          });
        },
        child: Scaffold(
          body: Container(),
        ),
      ),
    );
  }
}
