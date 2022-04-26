import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/profile/presentation/bloc/profile_cubit/profile_cubit.dart';
import 'package:ecommerce/features/profile/presentation/bloc/profile_cubit/profile_states.dart';
import 'package:ecommerce/features/profile/presentation/pages/update_profile_page.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>()..getUser(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.tr.profile),
        ),
        body: BlocBuilder<ProfileCubit, ProfileStates>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const AppProgressIndicator(),
              loaded: (user) => ProfileBody(user: user),
              // failures: (failures) => Center(
              //       child: Text(failures),
              //     ),
              orElse: () => const ProfileBody(
                user: User(
                  name: 'Taha Elkholy',
                  email: 'taha@gmail.com',
                  address: 'Damanhour, Bhera, Egypt',
                  phone: '012012012365',
                  image:
                      'https://images.pexels.com/photos/3371492/pexels-photo-3371492.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Hero(
                    tag: 'USER_IMAGE_TAG',
                    child: AppNetworkImage(
                      url: user.image,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 500),
                    child: Text(
                      user.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: appDarkBlue),
                    ),
                    tween: Tween<double>(begin: 0, end: 1),
                    builder: (context, double value, child) {
                      return Opacity(
                        opacity: value,
                        child: child,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const SizedBox(
                width: 20, height: 20, child: FaIcon(FontAwesomeIcons.phone)),
            title: Row(
              children: [
                Text(
                  context.tr.phone,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  user.phone,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const SizedBox(
                width: 20,
                height: 20,
                child: FaIcon(FontAwesomeIcons.locationCrosshairs)),
            title: Row(
              children: [
                Text(
                  context.tr.address,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  user.address,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ),
          ListTile(
            leading:
                const SizedBox(width: 20, height: 20, child: Icon(Icons.email)),
            title: Row(
              children: [
                Text(
                  context.tr.email,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  user.email,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                          builder: (context) => UpdateProfilePage(
                                user: user,
                              )));
                },
                text: context.tr.update),
          )
        ],
      ),
    );
  }
}
