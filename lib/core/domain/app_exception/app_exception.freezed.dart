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
abstract class _$$_UnAuthCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$$_UnAuthCopyWith(_$_UnAuth value, $Res Function(_$_UnAuth) then) =
      __$$_UnAuthCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_UnAuthCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$$_UnAuthCopyWith<$Res> {
  __$$_UnAuthCopyWithImpl(_$_UnAuth _value, $Res Function(_$_UnAuth) _then)
      : super(_value, (v) => _then(v as _$_UnAuth));

  @override
  _$_UnAuth get _value => super._value as _$_UnAuth;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_UnAuth(
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
            other is _$_UnAuth &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_UnAuthCopyWith<_$_UnAuth> get copyWith =>
      __$$_UnAuthCopyWithImpl<_$_UnAuth>(this, _$identity);

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
  _$$_UnAuthCopyWith<_$_UnAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoDataCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$$_NoDataCopyWith(_$_NoData value, $Res Function(_$_NoData) then) =
      __$$_NoDataCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_NoDataCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$$_NoDataCopyWith<$Res> {
  __$$_NoDataCopyWithImpl(_$_NoData _value, $Res Function(_$_NoData) _then)
      : super(_value, (v) => _then(v as _$_NoData));

  @override
  _$_NoData get _value => super._value as _$_NoData;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_NoData(
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
            other is _$_NoData &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_NoDataCopyWith<_$_NoData> get copyWith =>
      __$$_NoDataCopyWithImpl<_$_NoData>(this, _$identity);

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
  _$$_NoDataCopyWith<_$_NoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection value, $Res Function(_$_NoConnection) then) =
      __$$_NoConnectionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$$_NoConnectionCopyWith<$Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection _value, $Res Function(_$_NoConnection) _then)
      : super(_value, (v) => _then(v as _$_NoConnection));

  @override
  _$_NoConnection get _value => super._value as _$_NoConnection;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_NoConnection(
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
            other is _$_NoConnection &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_NoConnectionCopyWith<_$_NoConnection> get copyWith =>
      __$$_NoConnectionCopyWithImpl<_$_NoConnection>(this, _$identity);

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
  _$$_NoConnectionCopyWith<_$_NoConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ServerError(
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
            other is _$_ServerError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

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
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnKnownCopyWith<$Res>
    implements $GeneralRemoteAppExceptionCopyWith<$Res> {
  factory _$$_UnKnownCopyWith(
          _$_UnKnown value, $Res Function(_$_UnKnown) then) =
      __$$_UnKnownCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_UnKnownCopyWithImpl<$Res>
    extends _$GeneralRemoteAppExceptionCopyWithImpl<$Res>
    implements _$$_UnKnownCopyWith<$Res> {
  __$$_UnKnownCopyWithImpl(_$_UnKnown _value, $Res Function(_$_UnKnown) _then)
      : super(_value, (v) => _then(v as _$_UnKnown));

  @override
  _$_UnKnown get _value => super._value as _$_UnKnown;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_UnKnown(
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
            other is _$_UnKnown &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_UnKnownCopyWith<_$_UnKnown> get copyWith =>
      __$$_UnKnownCopyWithImpl<_$_UnKnown>(this, _$identity);

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
  _$$_UnKnownCopyWith<_$_UnKnown> get copyWith =>
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
abstract class _$$_CantAccessCopyWith<$Res>
    implements $GeneralLocalAppExceptionCopyWith<$Res> {
  factory _$$_CantAccessCopyWith(
          _$_CantAccess value, $Res Function(_$_CantAccess) then) =
      __$$_CantAccessCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_CantAccessCopyWithImpl<$Res>
    extends _$GeneralLocalAppExceptionCopyWithImpl<$Res>
    implements _$$_CantAccessCopyWith<$Res> {
  __$$_CantAccessCopyWithImpl(
      _$_CantAccess _value, $Res Function(_$_CantAccess) _then)
      : super(_value, (v) => _then(v as _$_CantAccess));

  @override
  _$_CantAccess get _value => super._value as _$_CantAccess;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_CantAccess(
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
            other is _$_CantAccess &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_CantAccessCopyWith<_$_CantAccess> get copyWith =>
      __$$_CantAccessCopyWithImpl<_$_CantAccess>(this, _$identity);

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
  _$$_CantAccessCopyWith<_$_CantAccess> get copyWith =>
      throw _privateConstructorUsedError;
}
