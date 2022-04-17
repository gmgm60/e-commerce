import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/core/features/locale/domain/use_case/change_locale_use_case.dart';
import 'package:ecommerce/core/features/locale/domain/use_case/get_locale_use_case.dart';
import 'package:ecommerce/core/features/locale/presentation/bloc/locale_cubit/locale_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocaleCubit extends Cubit<LocaleStates> {
  LocaleCubit(this._getLocaleUseCase, this._changeLocaleUseCase)
      : super(const LocaleInitialState());

  final GetLocaleUseCase _getLocaleUseCase;
  final ChangeLocaleUseCase _changeLocaleUseCase;
  Locale? locale;

  void getLocal({Locale? newLocale}) {
    locale = newLocale ?? const Locale(enLanguageCode);
    debugPrint('local changed: $locale');
    emit(LocaleChangedState(locale: locale!));
  }

  Future<void> getLocalization() async {
    final res = await _getLocaleUseCase(NoParams());
    emit(res.fold((error) {
      locale = const Locale(enLanguageCode);
      return LocaleErrorState(error: error.message);
    }, (localeCode) {
      locale = Locale(localeCode);
      return LocaleLoadedFromSharedState(locale: Locale(localeCode));
    }));
  }

  Future<void> changeLocalization({required Locale newLocale}) async {
    final res = await _changeLocaleUseCase(newLocale.languageCode);
    emit(res.fold((error) {
      locale = const Locale(enLanguageCode);
      return LocaleErrorState(error: error.message);
    }, (changed) {
      locale = newLocale;
      return LocaleChangedState(locale: locale!);
    }));
  }
}
