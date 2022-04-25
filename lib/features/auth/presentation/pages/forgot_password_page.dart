import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/core/presentation/widgets/app_text_form_field.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_states.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;

  late final AuthCubit _authCubit;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(text: 'taha@gmail.com');
    _authCubit = getIt<AuthCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _authCubit,
      child: BlocListener<AuthCubit, AuthStates>(
        listener: (context, state) {
          state.whenOrNull(loaded: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(context.tr.checkYourEmail)));
            AutoRouter.of(context).popUntilRoot();
          }, error: (error) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error)));
          });
        },
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(context.tr.resetPassword),
              centerTitle: false,
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover,
                      width: 120,
                      height: 120,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
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
                      height: 20,
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
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  BlocProvider.of<AuthCubit>(context)
                                      .resetPassword(
                                          email: emailController.text);
                                }
                              },
                              text: context.tr.resetPassword),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
