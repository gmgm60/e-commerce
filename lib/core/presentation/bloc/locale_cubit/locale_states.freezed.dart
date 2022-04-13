// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locale_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocaleStatesTearOff {
  const _$LocaleStatesTearOff();

  LocaleInitialState initial() {
    return const LocaleInitialState();
  }

  LocaleChangedState changed({required Locale locale}) {
    return LocaleChangedState(
      locale: locale,
    );
  }
}

/// @nodoc
const $LocaleStates = _$LocaleStatesTearOff();

/// @nodoc
mixin _$LocaleStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocaleInitialState value) initial,
    required TResult Function(LocaleChangedState value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStatesCopyWith<$Res> {
  factory $LocaleStatesCopyWith(
          LocaleStates value, $Res Function(LocaleStates) then) =
      _$LocaleStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocaleStatesCopyWithImpl<$Res> implements $LocaleStatesCopyWith<$Res> {
  _$LocaleStatesCopyWithImpl(this._value, this._then);

  final LocaleStates _value;
  // ignore: unused_field
  final $Res Function(LocaleStates) _then;
}

/// @nodoc
abstract class $LocaleInitialStateCopyWith<$Res> {
  factory $LocaleInitialStateCopyWith(
          LocaleInitialState value, $Res Function(LocaleInitialState) then) =
      _$LocaleInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocaleInitialStateCopyWithImpl<$Res>
    extends _$LocaleStatesCopyWithImpl<$Res>
    implements $LocaleInitialStateCopyWith<$Res> {
  _$LocaleInitialStateCopyWithImpl(
      LocaleInitialState _value, $Res Function(LocaleInitialState) _then)
      : super(_value, (v) => _then(v as LocaleInitialState));

  @override
  LocaleInitialState get _value => super._value as LocaleInitialState;
}

/// @nodoc

class _$LocaleInitialState implements LocaleInitialState {
  const _$LocaleInitialState();

  @override
  String toString() {
    return 'LocaleStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocaleInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocaleInitialState value) initial,
    required TResult Function(LocaleChangedState value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocaleInitialState implements LocaleStates {
  const factory LocaleInitialState() = _$LocaleInitialState;
}

/// @nodoc
abstract class $LocaleChangedStateCopyWith<$Res> {
  factory $LocaleChangedStateCopyWith(
          LocaleChangedState value, $Res Function(LocaleChangedState) then) =
      _$LocaleChangedStateCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleChangedStateCopyWithImpl<$Res>
    extends _$LocaleStatesCopyWithImpl<$Res>
    implements $LocaleChangedStateCopyWith<$Res> {
  _$LocaleChangedStateCopyWithImpl(
      LocaleChangedState _value, $Res Function(LocaleChangedState) _then)
      : super(_value, (v) => _then(v as LocaleChangedState));

  @override
  LocaleChangedState get _value => super._value as LocaleChangedState;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(LocaleChangedState(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LocaleChangedState implements LocaleChangedState {
  const _$LocaleChangedState({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocaleStates.changed(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocaleChangedState &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  $LocaleChangedStateCopyWith<LocaleChangedState> get copyWith =>
      _$LocaleChangedStateCopyWithImpl<LocaleChangedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changed,
  }) {
    return changed(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
  }) {
    return changed?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocaleInitialState value) initial,
    required TResult Function(LocaleChangedState value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class LocaleChangedState implements LocaleStates {
  const factory LocaleChangedState({required Locale locale}) =
      _$LocaleChangedState;

  Locale get locale;
  @JsonKey(ignore: true)
  $LocaleChangedStateCopyWith<LocaleChangedState> get copyWith =>
      throw _privateConstructorUsedError;
}
