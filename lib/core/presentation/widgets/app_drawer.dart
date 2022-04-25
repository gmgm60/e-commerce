import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/features/locale/presentation/widgets/app_locales.dart';
import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_states.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  context.tr.appTitle,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person,color: appGrey,),
            title: Text(
              context.tr.profile,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            onTap: () {
              AutoRouter.of(context).pop();
              AutoRouter.of(context).navigate(const ProfileRoute());
            },
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.language, color: appGrey,),
            title: Text(
              context.tr.language,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            onTap: () {
              AutoRouter.of(context).pop().then((_) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AppLocale();
                    });
              });
            },
          ),
          BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: BlocConsumer<AuthCubit, AuthStates>(
              listener: (context, state) {
                // state.whenOrNull(loggOut: () {
                //   AutoRouter.of(context).popUntilRoot();
                //   AutoRouter.of(context).replace(const StartupRoute());
                // });

                state.maybeWhen(orElse: (){
                  AutoRouter.of(context).popUntilRoot();
                  AutoRouter.of(context).replace(const StartupRoute());
                });
              },
              builder: (context, state) {
                return state.maybeWhen(
                    loading: () => const AppProgressIndicator(),
                    orElse: () => ListTile(
                          leading: const FaIcon(
                              FontAwesomeIcons.arrowRightFromBracket, color: appGrey,),
                          title: Text(
                            context.tr.logout,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          onTap: () {
                            BlocProvider.of<AuthCubit>(context).logout();
                          },
                        ));
              },
            ),
          )
        ],
      ),
    );
  }
}
