import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension LocalizationContext on BuildContext {
  AppLocalizations get tr{
    // return key;
    return Localizations.of<AppLocalizations>(this, AppLocalizations)!;
  }
}