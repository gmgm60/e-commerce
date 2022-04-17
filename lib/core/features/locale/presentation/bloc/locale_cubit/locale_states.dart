import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_states.freezed.dart';

@freezed
class LocaleStates with _$LocaleStates {
  const factory LocaleStates.initial() = LocaleInitialState;

  const factory LocaleStates.changed({required Locale locale}) =
      LocaleChangedState;

  const factory LocaleStates.loadedFromShared({required Locale locale}) =
      LocaleLoadedFromSharedState;

  const factory LocaleStates.error({required String error}) = LocaleErrorState;
}
