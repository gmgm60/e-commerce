import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/core/presentation/widgets/app_text_form_field.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/auth/domain/entities/login_param.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_states.dart';
import 'package:ecommerce/features/auth/presentation/widgets/auth_logo_design.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;

  late TextEditingController passwordController;

  late final AuthCubit _authCubit;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    _authCubit = getIt<AuthCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _authCubit,
      child: BlocListener<AuthCubit, AuthStates>(
        listener: (context, state) {
          state.whenOrNull(loaded: () {
            // todo navigate home
          }, error: (error) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error)));
          });
        },
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AuthLogoDesign(),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppTextFormField(
                            key: const ValueKey('email_text_field'),
                            controller: emailController,
                            icon: Icons.email_outlined,
                            inputType: TextInputType.emailAddress,
                            label: context.tr.email,
                            validate: (value) {
                              if (value != null) {
                                bool validation = emailRegExp.hasMatch(value);
                                if (!validation) {
                                  return context.tr.emailFieldValidation;
                                }
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          AppTextFormField(
                            key: const ValueKey('password_text_field'),
                            controller: passwordController,
                            validate: (value) {
                              if (value == null || value.length < 8) {
                                return context.tr.passwordFieldValidation;
                              }
                              return null;
                            },
                            inputType: TextInputType.visiblePassword,
                            label: context.tr.password,
                            icon: Icons.lock,
                            isPassword: true,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          BlocBuilder<AuthCubit, AuthStates>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                orElse: () => AppElevatedButton(

                                    isLoading: state.maybeWhen(
                                      orElse: () => false,
                                      loading: () => true,
                                      loaded: () => true,
                                    ),
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                        BlocProvider.of<AuthCubit>(context).login(
                                            loginParam: LoginParam(
                                                email:
                                                    emailController.text.trim(),
                                                password:
                                                    passwordController.text));
                                      }
                                    },
                                    text: context.tr.login),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        //AutoRouter.of(context).replace(const RegisterRoute());
                      },
                      child: Text(
                        context.tr.forgotPassword,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: appBlue),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.tr.haveNoAccountYet,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: appGrey),
                      ),
                      const SizedBox(width: 2,),
                      TextButton(
                          onPressed: () {
                            AutoRouter.of(context).replace(const RegisterRoute());
                          },
                          child: Text(
                            context.tr.register,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: appBlue),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
