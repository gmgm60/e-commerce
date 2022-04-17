import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class AuthLogoDesign extends StatelessWidget {
  const AuthLogoDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [

        const Image(
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.cover,
          width: 120,
          height: 120,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          context.tr.welcomeText,
          style: Theme.of(context)
              .textTheme
              .headline1,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          context.tr.signInToContinue,
          style: Theme.of(context)
              .textTheme
              .bodyText1!.copyWith(color: appYellow),
        ),
      ],
    );
  }
}
