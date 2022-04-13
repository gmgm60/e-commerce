import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/core/presentation/bloc/locale_cubit/locale_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocaleCubit extends Cubit<LocaleStates> {
  LocaleCubit() : super(const LocaleInitialState());

  Locale? locale;

  void changeLocale({Locale? newLocale}) {
    locale = newLocale ?? const Locale(enLanguageCode);
    debugPrint('locale changed: $locale');
    emit(LocaleChangedState(locale: locale!));
  }
}
