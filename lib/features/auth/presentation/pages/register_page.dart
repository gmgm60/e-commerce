import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/core/presentation/widgets/app_text_form_field.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/auth/domain/entities/register_param.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_states.dart';
import 'package:ecommerce/features/auth/presentation/widgets/auth_logo_design.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmationController;

  late final AuthCubit _authCubit;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();

    _authCubit = getIt<AuthCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _authCubit,
      child: BlocListener<AuthCubit, AuthStates>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: () {
              // todo navigate
            },
            error: (error) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(error)));
            },
          );
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
                        children: [
                          AppTextFormField(
                            controller: nameController,
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return context.tr.nameFieldValidation;
                              }
                              return null;
                            },
                            inputType: TextInputType.name,
                            label: context.tr.name,
                            icon: Icons.person,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          AppTextFormField(
                            controller: phoneController,
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return context.tr.phoneFieldValidation;
                              }
                              return null;
                            },
                            inputType: TextInputType.phone,
                            label: context.tr.name,
                            icon: Icons.person,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          AppTextFormField(
                            controller: emailController,
                            validate: (value) {
                              if (value != null) {
                                bool validation = emailRegExp.hasMatch(value);
                                if (!validation) {
                                  return context.tr.emailFieldValidation;
                                }
                              }
                              return null;
                            },
                            inputType: TextInputType.emailAddress,
                            label: context.tr.email,
                            icon: Icons.email,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          AppTextFormField(
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
                              isPassword: true),
                          const SizedBox(
                            height: 16,
                          ),
                          AppTextFormField(
                              controller: passwordConfirmationController,
                              validate: (value) {
                                if (value != passwordController.text) {
                                  return context
                                      .tr.confirmPasswordFieldValidation;
                                }
                                return null;
                              },
                              inputType: TextInputType.visiblePassword,
                              label: context.tr.confirmPassword,
                              icon: Icons.lock,
                              isPassword: true),
                          const SizedBox(
                            height: 16,
                          ),
                          BlocBuilder<AuthCubit, AuthStates>(
                              builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () {
                                return AppElevatedButton(
                                    isLoading: state.maybeWhen(
                                      orElse: () => false,
                                      loading: () => true,
                                      loaded: () => true,
                                    ),
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                        BlocProvider.of<AuthCubit>(context)
                                            .register(
                                          registerParam: RegisterParam(
                                              name: nameController.text.trim(),
                                              email: emailController.text.trim(),
                                              password: passwordController.text,
                                              passwordConfirmation:
                                                  passwordConfirmationController
                                                      .text),
                                        );
                                      }
                                    },
                                    text: context.tr.register);
                              },
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.tr.alreadyHaveAccount,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: appGrey),
                      ),
                      const SizedBox(width: 2,),
                      TextButton(
                          onPressed: () {
                            AutoRouter.of(context).replace(const LoginRoute());
                          },
                          child: Text(
                            context.tr.login,
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
