
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/core/presentation/bloc/locale_cubit/locale_cubit.dart';
import 'package:ecommerce/core/presentation/bloc/locale_cubit/locale_states.dart';
import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLocale extends StatelessWidget {
  const AppLocale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(16),
      title: Text(context.tr.language),
      content: BlocBuilder<LocaleCubit, LocaleStates>(
        builder: (context, state) {
          var cubit = BlocProvider.of<LocaleCubit>(context);
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(
                  context.tr.english,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                leading: Radio<Locale>(
                    activeColor: appMainColor,
                    value: const Locale(enLanguageCode),
                    groupValue: cubit.locale,
                    onChanged: (newLocaleValue) {
                      Navigator.of(context, rootNavigator: true).pop();
                      cubit.changeLocale(newLocale: newLocaleValue);
                    }),
              ),
              ListTile(
                title: Text(context.tr.arabic,
                    style: Theme.of(context).textTheme.subtitle1),
                leading: Radio<Locale>(
                  activeColor: appMainColor,
                  value: const Locale(arLanguageCode),
                  groupValue: cubit.locale,
                  onChanged: (newLocalValue) {
                    Navigator.of(context, rootNavigator: true).pop();
                    cubit.changeLocale(newLocale: newLocalValue);
                  },
                ),
              ),
            ],
          );
        },
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(context.tr.cancel))
      ],
    );
  }
}
