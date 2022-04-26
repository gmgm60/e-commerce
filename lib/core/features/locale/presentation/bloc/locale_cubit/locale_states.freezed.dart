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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocaleStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changed,
    required TResult Function(Locale locale) loadedFromShared,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocaleInitialState value) initial,
    required TResult Function(LocaleChangedState value) changed,
    required TResult Function(LocaleLoadedFromSharedState value)
        loadedFromShared,
    required TResult Function(LocaleErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
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
    required TResult Function(Locale locale) loadedFromShared,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
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
    required TResult Function(LocaleLoadedFromSharedState value)
        loadedFromShared,
    required TResult Function(LocaleErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
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
    required TResult Function(Locale locale) loadedFromShared,
    required TResult Function(String error) error,
  }) {
    return changed(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
  }) {
    return changed?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
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
    required TResult Function(LocaleLoadedFromSharedState value)
        loadedFromShared,
    required TResult Function(LocaleErrorState value) error,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class LocaleChangedState implements LocaleStates {
  const factory LocaleChangedState({required final Locale locale}) =
      _$LocaleChangedState;

  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocaleChangedStateCopyWith<LocaleChangedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleLoadedFromSharedStateCopyWith<$Res> {
  factory $LocaleLoadedFromSharedStateCopyWith(
          LocaleLoadedFromSharedState value,
          $Res Function(LocaleLoadedFromSharedState) then) =
      _$LocaleLoadedFromSharedStateCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleLoadedFromSharedStateCopyWithImpl<$Res>
    extends _$LocaleStatesCopyWithImpl<$Res>
    implements $LocaleLoadedFromSharedStateCopyWith<$Res> {
  _$LocaleLoadedFromSharedStateCopyWithImpl(LocaleLoadedFromSharedState _value,
      $Res Function(LocaleLoadedFromSharedState) _then)
      : super(_value, (v) => _then(v as LocaleLoadedFromSharedState));

  @override
  LocaleLoadedFromSharedState get _value =>
      super._value as LocaleLoadedFromSharedState;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(LocaleLoadedFromSharedState(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LocaleLoadedFromSharedState implements LocaleLoadedFromSharedState {
  const _$LocaleLoadedFromSharedState({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocaleStates.loadedFromShared(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocaleLoadedFromSharedState &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  $LocaleLoadedFromSharedStateCopyWith<LocaleLoadedFromSharedState>
      get copyWith => _$LocaleLoadedFromSharedStateCopyWithImpl<
          LocaleLoadedFromSharedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changed,
    required TResult Function(Locale locale) loadedFromShared,
    required TResult Function(String error) error,
  }) {
    return loadedFromShared(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
  }) {
    return loadedFromShared?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadedFromShared != null) {
      return loadedFromShared(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocaleInitialState value) initial,
    required TResult Function(LocaleChangedState value) changed,
    required TResult Function(LocaleLoadedFromSharedState value)
        loadedFromShared,
    required TResult Function(LocaleErrorState value) error,
  }) {
    return loadedFromShared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
  }) {
    return loadedFromShared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loadedFromShared != null) {
      return loadedFromShared(this);
    }
    return orElse();
  }
}

abstract class LocaleLoadedFromSharedState implements LocaleStates {
  const factory LocaleLoadedFromSharedState({required final Locale locale}) =
      _$LocaleLoadedFromSharedState;

  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocaleLoadedFromSharedStateCopyWith<LocaleLoadedFromSharedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleErrorStateCopyWith<$Res> {
  factory $LocaleErrorStateCopyWith(
          LocaleErrorState value, $Res Function(LocaleErrorState) then) =
      _$LocaleErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$LocaleErrorStateCopyWithImpl<$Res>
    extends _$LocaleStatesCopyWithImpl<$Res>
    implements $LocaleErrorStateCopyWith<$Res> {
  _$LocaleErrorStateCopyWithImpl(
      LocaleErrorState _value, $Res Function(LocaleErrorState) _then)
      : super(_value, (v) => _then(v as LocaleErrorState));

  @override
  LocaleErrorState get _value => super._value as LocaleErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(LocaleErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocaleErrorState implements LocaleErrorState {
  const _$LocaleErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LocaleStates.failures(failures: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocaleErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $LocaleErrorStateCopyWith<LocaleErrorState> get copyWith =>
      _$LocaleErrorStateCopyWithImpl<LocaleErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changed,
    required TResult Function(Locale locale) loadedFromShared,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changed,
    TResult Function(Locale locale)? loadedFromShared,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocaleInitialState value) initial,
    required TResult Function(LocaleChangedState value) changed,
    required TResult Function(LocaleLoadedFromSharedState value)
        loadedFromShared,
    required TResult Function(LocaleErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleInitialState value)? initial,
    TResult Function(LocaleChangedState value)? changed,
    TResult Function(LocaleLoadedFromSharedState value)? loadedFromShared,
    TResult Function(LocaleErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocaleErrorState implements LocaleStates {
  const factory LocaleErrorState({required final String error}) =
      _$LocaleErrorState;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocaleErrorStateCopyWith<LocaleErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
