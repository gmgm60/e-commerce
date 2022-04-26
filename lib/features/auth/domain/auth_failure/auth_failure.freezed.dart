// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) register,
    required TResult Function(String message) logout,
    required TResult Function(String message) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginFailure value) login,
    required TResult Function(_RegisterFailure value) register,
    required TResult Function(_LogoutFailure value) logout,
    required TResult Function(_ResetPasswordFailure value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$LoginFailureCopyWith(
          _LoginFailure value, $Res Function(_LoginFailure) then) =
      __$LoginFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$LoginFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$LoginFailureCopyWith<$Res> {
  __$LoginFailureCopyWithImpl(
      _LoginFailure _value, $Res Function(_LoginFailure) _then)
      : super(_value, (v) => _then(v as _LoginFailure));

  @override
  _LoginFailure get _value => super._value as _LoginFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LoginFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginFailure implements _LoginFailure {
  _$_LoginFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.login(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$LoginFailureCopyWith<_LoginFailure> get copyWith =>
      __$LoginFailureCopyWithImpl<_LoginFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) register,
    required TResult Function(String message) logout,
    required TResult Function(String message) resetPassword,
  }) {
    return login(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
  }) {
    return login?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginFailure value) login,
    required TResult Function(_RegisterFailure value) register,
    required TResult Function(_LogoutFailure value) logout,
    required TResult Function(_ResetPasswordFailure value) resetPassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginFailure implements AuthFailure {
  factory _LoginFailure({required final String message}) = _$_LoginFailure;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginFailureCopyWith<_LoginFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$RegisterFailureCopyWith(
          _RegisterFailure value, $Res Function(_RegisterFailure) then) =
      __$RegisterFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$RegisterFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$RegisterFailureCopyWith<$Res> {
  __$RegisterFailureCopyWithImpl(
      _RegisterFailure _value, $Res Function(_RegisterFailure) _then)
      : super(_value, (v) => _then(v as _RegisterFailure));

  @override
  _RegisterFailure get _value => super._value as _RegisterFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_RegisterFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterFailure implements _RegisterFailure {
  _$_RegisterFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.register(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$RegisterFailureCopyWith<_RegisterFailure> get copyWith =>
      __$RegisterFailureCopyWithImpl<_RegisterFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) register,
    required TResult Function(String message) logout,
    required TResult Function(String message) resetPassword,
  }) {
    return register(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
  }) {
    return register?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginFailure value) login,
    required TResult Function(_RegisterFailure value) register,
    required TResult Function(_LogoutFailure value) logout,
    required TResult Function(_ResetPasswordFailure value) resetPassword,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailure implements AuthFailure {
  factory _RegisterFailure({required final String message}) =
      _$_RegisterFailure;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterFailureCopyWith<_RegisterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogoutFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$LogoutFailureCopyWith(
          _LogoutFailure value, $Res Function(_LogoutFailure) then) =
      __$LogoutFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$LogoutFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$LogoutFailureCopyWith<$Res> {
  __$LogoutFailureCopyWithImpl(
      _LogoutFailure _value, $Res Function(_LogoutFailure) _then)
      : super(_value, (v) => _then(v as _LogoutFailure));

  @override
  _LogoutFailure get _value => super._value as _LogoutFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LogoutFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogoutFailure implements _LogoutFailure {
  _$_LogoutFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.logout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogoutFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$LogoutFailureCopyWith<_LogoutFailure> get copyWith =>
      __$LogoutFailureCopyWithImpl<_LogoutFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) register,
    required TResult Function(String message) logout,
    required TResult Function(String message) resetPassword,
  }) {
    return logout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
  }) {
    return logout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginFailure value) login,
    required TResult Function(_RegisterFailure value) register,
    required TResult Function(_LogoutFailure value) logout,
    required TResult Function(_ResetPasswordFailure value) resetPassword,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutFailure implements AuthFailure {
  factory _LogoutFailure({required final String message}) = _$_LogoutFailure;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LogoutFailureCopyWith<_LogoutFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetPasswordFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$ResetPasswordFailureCopyWith(_ResetPasswordFailure value,
          $Res Function(_ResetPasswordFailure) then) =
      __$ResetPasswordFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ResetPasswordFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ResetPasswordFailureCopyWith<$Res> {
  __$ResetPasswordFailureCopyWithImpl(
      _ResetPasswordFailure _value, $Res Function(_ResetPasswordFailure) _then)
      : super(_value, (v) => _then(v as _ResetPasswordFailure));

  @override
  _ResetPasswordFailure get _value => super._value as _ResetPasswordFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ResetPasswordFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordFailure implements _ResetPasswordFailure {
  _$_ResetPasswordFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.resetPassword(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPasswordFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordFailureCopyWith<_ResetPasswordFailure> get copyWith =>
      __$ResetPasswordFailureCopyWithImpl<_ResetPasswordFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) register,
    required TResult Function(String message) logout,
    required TResult Function(String message) resetPassword,
  }) {
    return resetPassword(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
  }) {
    return resetPassword?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? register,
    TResult Function(String message)? logout,
    TResult Function(String message)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginFailure value) login,
    required TResult Function(_RegisterFailure value) register,
    required TResult Function(_LogoutFailure value) logout,
    required TResult Function(_ResetPasswordFailure value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginFailure value)? login,
    TResult Function(_RegisterFailure value)? register,
    TResult Function(_LogoutFailure value)? logout,
    TResult Function(_ResetPasswordFailure value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordFailure implements AuthFailure {
  factory _ResetPasswordFailure({required final String message}) =
      _$_ResetPasswordFailure;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetPasswordFailureCopyWith<_ResetPasswordFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
