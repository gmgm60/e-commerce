// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failures {
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) noUser,
    required TResult Function(String error) serverError,
    required TResult Function(String error) localStorageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? noUser,
    TResult Function(String error)? serverError,
    TResult Function(String error)? localStorageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? noUser,
    TResult Function(String error)? serverError,
    TResult Function(String error)? localStorageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_noUser value) noUser,
    required TResult Function(_serverError value) serverError,
    required TResult Function(_localStorageError value) localStorageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_noUser value)? noUser,
    TResult Function(_serverError value)? serverError,
    TResult Function(_localStorageError value)? localStorageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_noUser value)? noUser,
    TResult Function(_serverError value)? serverError,
    TResult Function(_localStorageError value)? localStorageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailuresCopyWith<Failures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailuresCopyWith<$Res> {
  factory $FailuresCopyWith(Failures value, $Res Function(Failures) then) =
      _$FailuresCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$FailuresCopyWithImpl<$Res> implements $FailuresCopyWith<$Res> {
  _$FailuresCopyWithImpl(this._value, this._then);

  final Failures _value;
  // ignore: unused_field
  final $Res Function(Failures) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$noUserCopyWith<$Res> implements $FailuresCopyWith<$Res> {
  factory _$noUserCopyWith(_noUser value, $Res Function(_noUser) then) =
      __$noUserCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$noUserCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$noUserCopyWith<$Res> {
  __$noUserCopyWithImpl(_noUser _value, $Res Function(_noUser) _then)
      : super(_value, (v) => _then(v as _noUser));

  @override
  _noUser get _value => super._value as _noUser;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_noUser(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_noUser implements _noUser {
  _$_noUser(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'Failures.noUser(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _noUser &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$noUserCopyWith<_noUser> get copyWith =>
      __$noUserCopyWithImpl<_noUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) noUser,
    required TResult Function(String error) serverError,
    required TResult Function(String error) localStorageError,
  }) {
    return noUser(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? noUser,
    TResult Function(String error)? serverError,
    TResult Function(String error)? localStorageError,
  }) {
    return noUser?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? noUser,
    TResult Function(String error)? serverError,
    TResult Function(String error)? localStorageError,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_noUser value) noUser,
    required TResult Function(_serverError value) serverError,
    required TResult Function(_localStorageError value) localStorageError,
  }) {
    return noUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_noUser value)? noUser,
    TResult Function(_serverError value)? serverError,
    TResult Function(_localStorageError value)? localStorageError,
  }) {
    return noUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_noUser value)? noUser,
    TResult Function(_serverError value)? serverError,
    TResult Function(_localStorageError value)? localStorageError,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser(this);
    }
    return orElse();
  }
}

abstract class _noUser implements Failures {
  factory _noUser(final String error) = _$_noUser;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$noUserCopyWith<_noUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$serverErrorCopyWith<$Res> implements $FailuresCopyWith<$Res> {
  factory _$serverErrorCopyWith(
          _serverError value, $Res Function(_serverError) then) =
      __$serverErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$serverErrorCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$serverErrorCopyWith<$Res> {
  __$serverErrorCopyWithImpl(
      _serverError _value, $Res Function(_serverError) _then)
      : super(_value, (v) => _then(v as _serverError));

  @override
  _serverError get _value => super._value as _serverError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_serverError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_serverError implements _serverError {
  _$_serverError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'Failures.serverError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _serverError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$serverErrorCopyWith<_serverError> get copyWith =>
      __$serverErrorCopyWithImpl<_serverError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) noUser,
    required TResult Function(String error) serverError,
    required TResult Function(String error) localStorageError,
  }) {
    return serverError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? noUser,
    TResult Function(String error)? serverError,
    TResult Function(String error)? localStorageError,
  }) {
    return serverError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? noUser,
    TResult Function(String error)? serverError,
    TResult Function(String error)? localStorageError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_noUser value) noUser,
    required TResult Function(_serverError value) serverError,
    required TResult Function(_localStorageError value) localStorageError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_noUser value)? noUser,
    TResult Function(_serverError value)? serverError,
    TResult Function(_localStorageError value)? localStorageError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_noUser value)? noUser,
    TResult Function(_serverError value)? serverError,
    TResult Function(_localStorageError value)? localStorageError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _serverError implements Failures {
  factory _serverError(final String error) = _$_serverError;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$serverErrorCopyWith<_serverError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$localStorageErrorCopyWith<$Res>
    implements $FailuresCopyWith<$Res> {
  factory _$localStorageErrorCopyWith(
          _localStorageError value, $Res Function(_localStorageError) then) =
      __$localStorageErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$localStorageErrorCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res>
    implements _$localStorageErrorCopyWith<$Res> {
  __$localStorageErrorCopyWithImpl(
      _localStorageError _value, $Res Function(_localStorageError) _then)
      : super(_value, (v) => _then(v as _localStorageError));

  @override
  _localStorageError get _value => super._value as _localStorageError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_localStorageError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_localStorageError implements _localStorageError {
  _$_localStorageError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'Failures.localStorageError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _localStorageError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$localStorageErrorCopyWith<_localStorageError> get copyWith =>
      __$localStorageErrorCopyWithImpl<_localStorageError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) noUser,
    required TResult Function(String error) serverError,
    required TResult Function(String error) localStorageError,
  }) {
    return localStorageError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? noUser,
    TResult Function(String error)? serverError,
    TResult Function(String error)? localStorageError,
  }) {
    return localStorageError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? noUser,
    TResult Function(String error)? serverError,
    TResult Function(String error)? localStorageError,
    required TResult orElse(),
  }) {
    if (localStorageError != null) {
      return localStorageError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_noUser value) noUser,
    required TResult Function(_serverError value) serverError,
    required TResult Function(_localStorageError value) localStorageError,
  }) {
    return localStorageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_noUser value)? noUser,
    TResult Function(_serverError value)? serverError,
    TResult Function(_localStorageError value)? localStorageError,
  }) {
    return localStorageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_noUser value)? noUser,
    TResult Function(_serverError value)? serverError,
    TResult Function(_localStorageError value)? localStorageError,
    required TResult orElse(),
  }) {
    if (localStorageError != null) {
      return localStorageError(this);
    }
    return orElse();
  }
}

abstract class _localStorageError implements Failures {
  factory _localStorageError(final String error) = _$_localStorageError;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$localStorageErrorCopyWith<_localStorageError> get copyWith =>
      throw _privateConstructorUsedError;
}
