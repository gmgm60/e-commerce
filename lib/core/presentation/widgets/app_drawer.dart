import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
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
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  context.tr.appTitle,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(
              context.tr.profile,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onTap: () {
              AutoRouter.of(context).pop();
              //todo implement profile
            },
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.language),
            title: Text(
              context.tr.language,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onTap: () {
              AutoRouter.of(context).pop();
              //todo implement language
            },
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.arrowRightFromBracket),
            title: Text(
              context.tr.logout,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onTap: () {
              AutoRouter.of(context).pop();
              //todo implement logout
            },
          ),
        ],
      ),
    );
  }
}
