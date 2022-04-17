import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizationContext on BuildContext {
  AppLocalizations get tr {
    return Localizations.of<AppLocalizations>(this, AppLocalizations)!;
  }
}
