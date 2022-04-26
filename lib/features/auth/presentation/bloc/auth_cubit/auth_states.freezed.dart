// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() loggOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthLoadedState value) loaded,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthLogoutState value) loggOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatesCopyWith<$Res> {
  factory $AuthStatesCopyWith(
          AuthStates value, $Res Function(AuthStates) then) =
      _$AuthStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStatesCopyWithImpl<$Res> implements $AuthStatesCopyWith<$Res> {
  _$AuthStatesCopyWithImpl(this._value, this._then);

  final AuthStates _value;
  // ignore: unused_field
  final $Res Function(AuthStates) _then;
}

/// @nodoc
abstract class $AuthInitialStateCopyWith<$Res> {
  factory $AuthInitialStateCopyWith(
          AuthInitialState value, $Res Function(AuthInitialState) then) =
      _$AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthInitialStateCopyWithImpl<$Res>
    extends _$AuthStatesCopyWithImpl<$Res>
    implements $AuthInitialStateCopyWith<$Res> {
  _$AuthInitialStateCopyWithImpl(
      AuthInitialState _value, $Res Function(AuthInitialState) _then)
      : super(_value, (v) => _then(v as AuthInitialState));

  @override
  AuthInitialState get _value => super._value as AuthInitialState;
}

/// @nodoc

class _$AuthInitialState implements AuthInitialState {
  const _$AuthInitialState();

  @override
  String toString() {
    return 'AuthStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() loggOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
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
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthLoadedState value) loaded,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthLogoutState value) loggOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitialState implements AuthStates {
  const factory AuthInitialState() = _$AuthInitialState;
}

/// @nodoc
abstract class $AuthLoadingStateCopyWith<$Res> {
  factory $AuthLoadingStateCopyWith(
          AuthLoadingState value, $Res Function(AuthLoadingState) then) =
      _$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStatesCopyWithImpl<$Res>
    implements $AuthLoadingStateCopyWith<$Res> {
  _$AuthLoadingStateCopyWithImpl(
      AuthLoadingState _value, $Res Function(AuthLoadingState) _then)
      : super(_value, (v) => _then(v as AuthLoadingState));

  @override
  AuthLoadingState get _value => super._value as AuthLoadingState;
}

/// @nodoc

class _$AuthLoadingState implements AuthLoadingState {
  const _$AuthLoadingState();

  @override
  String toString() {
    return 'AuthStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() loggOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthLoadedState value) loaded,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthLogoutState value) loggOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingState implements AuthStates {
  const factory AuthLoadingState() = _$AuthLoadingState;
}

/// @nodoc
abstract class $AuthLoadedStateCopyWith<$Res> {
  factory $AuthLoadedStateCopyWith(
          AuthLoadedState value, $Res Function(AuthLoadedState) then) =
      _$AuthLoadedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoadedStateCopyWithImpl<$Res> extends _$AuthStatesCopyWithImpl<$Res>
    implements $AuthLoadedStateCopyWith<$Res> {
  _$AuthLoadedStateCopyWithImpl(
      AuthLoadedState _value, $Res Function(AuthLoadedState) _then)
      : super(_value, (v) => _then(v as AuthLoadedState));

  @override
  AuthLoadedState get _value => super._value as AuthLoadedState;
}

/// @nodoc

class _$AuthLoadedState implements AuthLoadedState {
  const _$AuthLoadedState();

  @override
  String toString() {
    return 'AuthStates.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoadedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() loggOut,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthLoadedState value) loaded,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthLogoutState value) loggOut,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AuthLoadedState implements AuthStates {
  const factory AuthLoadedState() = _$AuthLoadedState;
}

/// @nodoc
abstract class $AuthErrorStateCopyWith<$Res> {
  factory $AuthErrorStateCopyWith(
          AuthErrorState value, $Res Function(AuthErrorState) then) =
      _$AuthErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$AuthErrorStateCopyWithImpl<$Res> extends _$AuthStatesCopyWithImpl<$Res>
    implements $AuthErrorStateCopyWith<$Res> {
  _$AuthErrorStateCopyWithImpl(
      AuthErrorState _value, $Res Function(AuthErrorState) _then)
      : super(_value, (v) => _then(v as AuthErrorState));

  @override
  AuthErrorState get _value => super._value as AuthErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorState implements AuthErrorState {
  const _$AuthErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthStates.failures(failures: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $AuthErrorStateCopyWith<AuthErrorState> get copyWith =>
      _$AuthErrorStateCopyWithImpl<AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() loggOut,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
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
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthLoadedState value) loaded,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthLogoutState value) loggOut,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthErrorState implements AuthStates {
  const factory AuthErrorState({required final String error}) =
      _$AuthErrorState;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthErrorStateCopyWith<AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLogoutStateCopyWith<$Res> {
  factory $AuthLogoutStateCopyWith(
          AuthLogoutState value, $Res Function(AuthLogoutState) then) =
      _$AuthLogoutStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLogoutStateCopyWithImpl<$Res> extends _$AuthStatesCopyWithImpl<$Res>
    implements $AuthLogoutStateCopyWith<$Res> {
  _$AuthLogoutStateCopyWithImpl(
      AuthLogoutState _value, $Res Function(AuthLogoutState) _then)
      : super(_value, (v) => _then(v as AuthLogoutState));

  @override
  AuthLogoutState get _value => super._value as AuthLogoutState;
}

/// @nodoc

class _$AuthLogoutState implements AuthLogoutState {
  const _$AuthLogoutState();

  @override
  String toString() {
    return 'AuthStates.loggOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLogoutState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() loggOut,
  }) {
    return loggOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
  }) {
    return loggOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? loggOut,
    required TResult orElse(),
  }) {
    if (loggOut != null) {
      return loggOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthLoadedState value) loaded,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthLogoutState value) loggOut,
  }) {
    return loggOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
  }) {
    return loggOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthLoadedState value)? loaded,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthLogoutState value)? loggOut,
    required TResult orElse(),
  }) {
    if (loggOut != null) {
      return loggOut(this);
    }
    return orElse();
  }
}

abstract class AuthLogoutState implements AuthStates {
  const factory AuthLogoutState() = _$AuthLogoutState;
}
