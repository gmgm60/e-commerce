import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_states.freezed.dart';

@freezed
class LocaleStates with _$LocaleStates {
  const factory LocaleStates.initial() = LocaleInitialState;

  const factory LocaleStates.changed({required Locale locale}) =
      LocaleChangedState;
}
