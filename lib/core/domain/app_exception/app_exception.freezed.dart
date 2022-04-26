// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeneralRemoteAppException {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuth,
    required TResult Function(String message) noData,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) serverError,
    required TResult Function(String message) unKnown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_NoData value) noData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnKnown value) unKnown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneralRemoteAppExceptionCopyWith<GeneralRemoteAppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory $GeneralRemoteAppExceptionCopyWith(GeneralRemoteAppException value,
          $Res Function(GeneralRemoteAppException) then) =
      _$GeneralRemoteAppExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  _$GeneralRemoteAppExceptionCopyWithImpl(this._value, this._then);

  final GeneralRemoteAppException _value;
  // ignore: unused_field
  final $Res Function(GeneralRemoteAppException) _then;

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
abstract class _$UnAuthCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$UnAuthCopyWith(_UnAuth value, $Res Function(_UnAuth) then) =
      __$UnAuthCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$UnAuthCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$UnAuthCopyWith<$Res> {
  __$UnAuthCopyWithImpl(_UnAuth _value, $Res Function(_UnAuth) _then)
      : super(_value, (v) => _then(v as _UnAuth));

  @override
  _UnAuth get _value => super._value as _UnAuth;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UnAuth(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnAuth implements _UnAuth {
  _$_UnAuth({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GeneralRemoteAppException.unAuth(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnAuth &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UnAuthCopyWith<_UnAuth> get copyWith =>
      __$UnAuthCopyWithImpl<_UnAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuth,
    required TResult Function(String message) noData,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) serverError,
    required TResult Function(String message) unKnown,
  }) {
    return unAuth(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
  }) {
    return unAuth?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_NoData value) noData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnKnown value) unKnown,
  }) {
    return unAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
  }) {
    return unAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(this);
    }
    return orElse();
  }
}

abstract class _UnAuth implements GeneralRemoteAppException {
  factory _UnAuth({required final String message}) = _$_UnAuth;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnAuthCopyWith<_UnAuth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoDataCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$NoDataCopyWith(_NoData value, $Res Function(_NoData) then) =
      __$NoDataCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$NoDataCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$NoDataCopyWith<$Res> {
  __$NoDataCopyWithImpl(_NoData _value, $Res Function(_NoData) _then)
      : super(_value, (v) => _then(v as _NoData));

  @override
  _NoData get _value => super._value as _NoData;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_NoData(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoData implements _NoData {
  _$_NoData({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GeneralRemoteAppException.noData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoData &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$NoDataCopyWith<_NoData> get copyWith =>
      __$NoDataCopyWithImpl<_NoData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuth,
    required TResult Function(String message) noData,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) serverError,
    required TResult Function(String message) unKnown,
  }) {
    return noData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
  }) {
    return noData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_NoData value) noData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnKnown value) unKnown,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData implements GeneralRemoteAppException {
  factory _NoData({required final String message}) = _$_NoData;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoDataCopyWith<_NoData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoConnectionCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$NoConnectionCopyWith(
          _NoConnection value, $Res Function(_NoConnection) then) =
      __$NoConnectionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$NoConnectionCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$NoConnectionCopyWith<$Res> {
  __$NoConnectionCopyWithImpl(
      _NoConnection _value, $Res Function(_NoConnection) _then)
      : super(_value, (v) => _then(v as _NoConnection));

  @override
  _NoConnection get _value => super._value as _NoConnection;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_NoConnection(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoConnection implements _NoConnection {
  _$_NoConnection({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GeneralRemoteAppException.noConnection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoConnection &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$NoConnectionCopyWith<_NoConnection> get copyWith =>
      __$NoConnectionCopyWithImpl<_NoConnection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuth,
    required TResult Function(String message) noData,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) serverError,
    required TResult Function(String message) unKnown,
  }) {
    return noConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
  }) {
    return noConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_NoData value) noData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnKnown value) unKnown,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements GeneralRemoteAppException {
  factory _NoConnection({required final String message}) = _$_NoConnection;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoConnectionCopyWith<_NoConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ServerError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  _$_ServerError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GeneralRemoteAppException.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuth,
    required TResult Function(String message) noData,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) serverError,
    required TResult Function(String message) unKnown,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_NoData value) noData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnKnown value) unKnown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements GeneralRemoteAppException {
  factory _ServerError({required final String message}) = _$_ServerError;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnKnownCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$UnKnownCopyWith(_UnKnown value, $Res Function(_UnKnown) then) =
      __$UnKnownCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$UnKnownCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$UnKnownCopyWith<$Res> {
  __$UnKnownCopyWithImpl(_UnKnown _value, $Res Function(_UnKnown) _then)
      : super(_value, (v) => _then(v as _UnKnown));

  @override
  _UnKnown get _value => super._value as _UnKnown;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UnKnown(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnKnown implements _UnKnown {
  _$_UnKnown({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GeneralRemoteAppException.unKnown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnKnown &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UnKnownCopyWith<_UnKnown> get copyWith =>
      __$UnKnownCopyWithImpl<_UnKnown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuth,
    required TResult Function(String message) noData,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) serverError,
    required TResult Function(String message) unKnown,
  }) {
    return unKnown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
  }) {
    return unKnown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuth,
    TResult Function(String message)? noData,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? serverError,
    TResult Function(String message)? unKnown,
    required TResult orElse(),
  }) {
    if (unKnown != null) {
      return unKnown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_NoData value) noData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnKnown value) unKnown,
  }) {
    return unKnown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
  }) {
    return unKnown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_NoData value)? noData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnKnown value)? unKnown,
    required TResult orElse(),
  }) {
    if (unKnown != null) {
      return unKnown(this);
    }
    return orElse();
  }
}

abstract class _UnKnown implements GeneralRemoteAppException {
  factory _UnKnown({required final String message}) = _$_UnKnown;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnKnownCopyWith<_UnKnown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeneralLocalAppException {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cantAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? cantAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cantAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CantAccess value) cantAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CantAccess value)? cantAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CantAccess value)? cantAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneralLocalAppExceptionCopyWith<GeneralLocalAppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralLocalAppExceptionCopyWith<$Res> {
  factory $GeneralLocalAppExceptionCopyWith(GeneralLocalAppException value,
          $Res Function(GeneralLocalAppException) then) =
      _$GeneralLocalAppExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$GeneralLocalAppExceptionCopyWithImpl<$Res>
    implements $GeneralLocalAppExceptionCopyWith<$Res> {
  _$GeneralLocalAppExceptionCopyWithImpl(this._value, this._then);

  final GeneralLocalAppException _value;
  // ignore: unused_field
  final $Res Function(GeneralLocalAppException) _then;

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
abstract class _$CantAccessCopyWith<$Res>
    implements $GeneralLocalAppExceptionCopyWith<$Res> {
  factory _$CantAccessCopyWith(
          _CantAccess value, $Res Function(_CantAccess) then) =
      __$CantAccessCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$CantAccessCopyWithImpl<$Res>
    extends _$GeneralLocalAppExceptionCopyWithImpl<$Res>
    implements _$CantAccessCopyWith<$Res> {
  __$CantAccessCopyWithImpl(
      _CantAccess _value, $Res Function(_CantAccess) _then)
      : super(_value, (v) => _then(v as _CantAccess));

  @override
  _CantAccess get _value => super._value as _CantAccess;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_CantAccess(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CantAccess implements _CantAccess {
  _$_CantAccess({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GeneralLocalAppException.cantAccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CantAccess &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$CantAccessCopyWith<_CantAccess> get copyWith =>
      __$CantAccessCopyWithImpl<_CantAccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cantAccess,
  }) {
    return cantAccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? cantAccess,
  }) {
    return cantAccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cantAccess,
    required TResult orElse(),
  }) {
    if (cantAccess != null) {
      return cantAccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CantAccess value) cantAccess,
  }) {
    return cantAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CantAccess value)? cantAccess,
  }) {
    return cantAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CantAccess value)? cantAccess,
    required TResult orElse(),
  }) {
    if (cantAccess != null) {
      return cantAccess(this);
    }
    return orElse();
  }
}

abstract class _CantAccess implements GeneralLocalAppException {
  factory _CantAccess({required final String message}) = _$_CantAccess;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CantAccessCopyWith<_CantAccess> get copyWith =>
      throw _privateConstructorUsedError;
}
