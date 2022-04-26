// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthException {
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
    required TResult Function(_LoginException value) login,
    required TResult Function(_RegisterException value) register,
    required TResult Function(_LogoutException value) logout,
    required TResult Function(_ResetPasswordException value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthExceptionCopyWith<AuthException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  final AuthException _value;
  // ignore: unused_field
  final $Res Function(AuthException) _then;

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
abstract class _$LoginExceptionCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$LoginExceptionCopyWith(
          _LoginException value, $Res Function(_LoginException) then) =
      __$LoginExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$LoginExceptionCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements _$LoginExceptionCopyWith<$Res> {
  __$LoginExceptionCopyWithImpl(
      _LoginException _value, $Res Function(_LoginException) _then)
      : super(_value, (v) => _then(v as _LoginException));

  @override
  _LoginException get _value => super._value as _LoginException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LoginException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginException implements _LoginException {
  _$_LoginException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthException.login(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$LoginExceptionCopyWith<_LoginException> get copyWith =>
      __$LoginExceptionCopyWithImpl<_LoginException>(this, _$identity);

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
    required TResult Function(_LoginException value) login,
    required TResult Function(_RegisterException value) register,
    required TResult Function(_LogoutException value) logout,
    required TResult Function(_ResetPasswordException value) resetPassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginException implements AuthException {
  factory _LoginException({required final String message}) = _$_LoginException;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginExceptionCopyWith<_LoginException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterExceptionCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$RegisterExceptionCopyWith(
          _RegisterException value, $Res Function(_RegisterException) then) =
      __$RegisterExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$RegisterExceptionCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements _$RegisterExceptionCopyWith<$Res> {
  __$RegisterExceptionCopyWithImpl(
      _RegisterException _value, $Res Function(_RegisterException) _then)
      : super(_value, (v) => _then(v as _RegisterException));

  @override
  _RegisterException get _value => super._value as _RegisterException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_RegisterException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterException implements _RegisterException {
  _$_RegisterException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthException.register(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$RegisterExceptionCopyWith<_RegisterException> get copyWith =>
      __$RegisterExceptionCopyWithImpl<_RegisterException>(this, _$identity);

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
    required TResult Function(_LoginException value) login,
    required TResult Function(_RegisterException value) register,
    required TResult Function(_LogoutException value) logout,
    required TResult Function(_ResetPasswordException value) resetPassword,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _RegisterException implements AuthException {
  factory _RegisterException({required final String message}) =
      _$_RegisterException;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterExceptionCopyWith<_RegisterException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogoutExceptionCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$LogoutExceptionCopyWith(
          _LogoutException value, $Res Function(_LogoutException) then) =
      __$LogoutExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$LogoutExceptionCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements _$LogoutExceptionCopyWith<$Res> {
  __$LogoutExceptionCopyWithImpl(
      _LogoutException _value, $Res Function(_LogoutException) _then)
      : super(_value, (v) => _then(v as _LogoutException));

  @override
  _LogoutException get _value => super._value as _LogoutException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LogoutException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogoutException implements _LogoutException {
  _$_LogoutException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthException.logout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogoutException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$LogoutExceptionCopyWith<_LogoutException> get copyWith =>
      __$LogoutExceptionCopyWithImpl<_LogoutException>(this, _$identity);

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
    required TResult Function(_LoginException value) login,
    required TResult Function(_RegisterException value) register,
    required TResult Function(_LogoutException value) logout,
    required TResult Function(_ResetPasswordException value) resetPassword,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutException implements AuthException {
  factory _LogoutException({required final String message}) =
      _$_LogoutException;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LogoutExceptionCopyWith<_LogoutException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetPasswordExceptionCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$ResetPasswordExceptionCopyWith(_ResetPasswordException value,
          $Res Function(_ResetPasswordException) then) =
      __$ResetPasswordExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ResetPasswordExceptionCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements _$ResetPasswordExceptionCopyWith<$Res> {
  __$ResetPasswordExceptionCopyWithImpl(_ResetPasswordException _value,
      $Res Function(_ResetPasswordException) _then)
      : super(_value, (v) => _then(v as _ResetPasswordException));

  @override
  _ResetPasswordException get _value => super._value as _ResetPasswordException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ResetPasswordException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordException implements _ResetPasswordException {
  _$_ResetPasswordException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthException.resetPassword(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPasswordException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordExceptionCopyWith<_ResetPasswordException> get copyWith =>
      __$ResetPasswordExceptionCopyWithImpl<_ResetPasswordException>(
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
    required TResult Function(_LoginException value) login,
    required TResult Function(_RegisterException value) register,
    required TResult Function(_LogoutException value) logout,
    required TResult Function(_ResetPasswordException value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginException value)? login,
    TResult Function(_RegisterException value)? register,
    TResult Function(_LogoutException value)? logout,
    TResult Function(_ResetPasswordException value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordException implements AuthException {
  factory _ResetPasswordException({required final String message}) =
      _$_ResetPasswordException;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetPasswordExceptionCopyWith<_ResetPasswordException> get copyWith =>
      throw _privateConstructorUsedError;
}
