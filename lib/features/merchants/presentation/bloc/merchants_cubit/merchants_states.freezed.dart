// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'merchants_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MerchantsStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Merchant> merchants) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MerchantsInitialState value) initial,
    required TResult Function(MerchantsLoadingState value) loading,
    required TResult Function(MerchantsLoadedState value) loaded,
    required TResult Function(MerchantsErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantsStatesCopyWith<$Res> {
  factory $MerchantsStatesCopyWith(
          MerchantsStates value, $Res Function(MerchantsStates) then) =
      _$MerchantsStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$MerchantsStatesCopyWithImpl<$Res>
    implements $MerchantsStatesCopyWith<$Res> {
  _$MerchantsStatesCopyWithImpl(this._value, this._then);

  final MerchantsStates _value;
  // ignore: unused_field
  final $Res Function(MerchantsStates) _then;
}

/// @nodoc
abstract class $MerchantsInitialStateCopyWith<$Res> {
  factory $MerchantsInitialStateCopyWith(MerchantsInitialState value,
          $Res Function(MerchantsInitialState) then) =
      _$MerchantsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MerchantsInitialStateCopyWithImpl<$Res>
    extends _$MerchantsStatesCopyWithImpl<$Res>
    implements $MerchantsInitialStateCopyWith<$Res> {
  _$MerchantsInitialStateCopyWithImpl(
      MerchantsInitialState _value, $Res Function(MerchantsInitialState) _then)
      : super(_value, (v) => _then(v as MerchantsInitialState));

  @override
  MerchantsInitialState get _value => super._value as MerchantsInitialState;
}

/// @nodoc

class _$MerchantsInitialState implements MerchantsInitialState {
  const _$MerchantsInitialState();

  @override
  String toString() {
    return 'MerchantsStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MerchantsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Merchant> merchants) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
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
    required TResult Function(MerchantsInitialState value) initial,
    required TResult Function(MerchantsLoadingState value) loading,
    required TResult Function(MerchantsLoadedState value) loaded,
    required TResult Function(MerchantsErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MerchantsInitialState implements MerchantsStates {
  const factory MerchantsInitialState() = _$MerchantsInitialState;
}

/// @nodoc
abstract class $MerchantsLoadingStateCopyWith<$Res> {
  factory $MerchantsLoadingStateCopyWith(MerchantsLoadingState value,
          $Res Function(MerchantsLoadingState) then) =
      _$MerchantsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MerchantsLoadingStateCopyWithImpl<$Res>
    extends _$MerchantsStatesCopyWithImpl<$Res>
    implements $MerchantsLoadingStateCopyWith<$Res> {
  _$MerchantsLoadingStateCopyWithImpl(
      MerchantsLoadingState _value, $Res Function(MerchantsLoadingState) _then)
      : super(_value, (v) => _then(v as MerchantsLoadingState));

  @override
  MerchantsLoadingState get _value => super._value as MerchantsLoadingState;
}

/// @nodoc

class _$MerchantsLoadingState implements MerchantsLoadingState {
  const _$MerchantsLoadingState();

  @override
  String toString() {
    return 'MerchantsStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MerchantsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Merchant> merchants) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(MerchantsInitialState value) initial,
    required TResult Function(MerchantsLoadingState value) loading,
    required TResult Function(MerchantsLoadedState value) loaded,
    required TResult Function(MerchantsErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MerchantsLoadingState implements MerchantsStates {
  const factory MerchantsLoadingState() = _$MerchantsLoadingState;
}

/// @nodoc
abstract class $MerchantsLoadedStateCopyWith<$Res> {
  factory $MerchantsLoadedStateCopyWith(MerchantsLoadedState value,
          $Res Function(MerchantsLoadedState) then) =
      _$MerchantsLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Merchant> merchants});
}

/// @nodoc
class _$MerchantsLoadedStateCopyWithImpl<$Res>
    extends _$MerchantsStatesCopyWithImpl<$Res>
    implements $MerchantsLoadedStateCopyWith<$Res> {
  _$MerchantsLoadedStateCopyWithImpl(
      MerchantsLoadedState _value, $Res Function(MerchantsLoadedState) _then)
      : super(_value, (v) => _then(v as MerchantsLoadedState));

  @override
  MerchantsLoadedState get _value => super._value as MerchantsLoadedState;

  @override
  $Res call({
    Object? merchants = freezed,
  }) {
    return _then(MerchantsLoadedState(
      merchants: merchants == freezed
          ? _value.merchants
          : merchants // ignore: cast_nullable_to_non_nullable
              as List<Merchant>,
    ));
  }
}

/// @nodoc

class _$MerchantsLoadedState implements MerchantsLoadedState {
  const _$MerchantsLoadedState({required final List<Merchant> merchants})
      : _merchants = merchants;

  final List<Merchant> _merchants;
  @override
  List<Merchant> get merchants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_merchants);
  }

  @override
  String toString() {
    return 'MerchantsStates.loaded(merchants: $merchants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MerchantsLoadedState &&
            const DeepCollectionEquality().equals(other.merchants, merchants));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(merchants));

  @JsonKey(ignore: true)
  @override
  $MerchantsLoadedStateCopyWith<MerchantsLoadedState> get copyWith =>
      _$MerchantsLoadedStateCopyWithImpl<MerchantsLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Merchant> merchants) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(merchants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
    TResult Function(String error)? error,
  }) {
    return loaded?.call(merchants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(merchants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MerchantsInitialState value) initial,
    required TResult Function(MerchantsLoadingState value) loading,
    required TResult Function(MerchantsLoadedState value) loaded,
    required TResult Function(MerchantsErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MerchantsLoadedState implements MerchantsStates {
  const factory MerchantsLoadedState(
      {required final List<Merchant> merchants}) = _$MerchantsLoadedState;

  List<Merchant> get merchants => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantsLoadedStateCopyWith<MerchantsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantsErrorStateCopyWith<$Res> {
  factory $MerchantsErrorStateCopyWith(
          MerchantsErrorState value, $Res Function(MerchantsErrorState) then) =
      _$MerchantsErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$MerchantsErrorStateCopyWithImpl<$Res>
    extends _$MerchantsStatesCopyWithImpl<$Res>
    implements $MerchantsErrorStateCopyWith<$Res> {
  _$MerchantsErrorStateCopyWithImpl(
      MerchantsErrorState _value, $Res Function(MerchantsErrorState) _then)
      : super(_value, (v) => _then(v as MerchantsErrorState));

  @override
  MerchantsErrorState get _value => super._value as MerchantsErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(MerchantsErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MerchantsErrorState implements MerchantsErrorState {
  const _$MerchantsErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MerchantsStates.failures(failures: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MerchantsErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $MerchantsErrorStateCopyWith<MerchantsErrorState> get copyWith =>
      _$MerchantsErrorStateCopyWithImpl<MerchantsErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Merchant> merchants) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Merchant> merchants)? loaded,
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
    required TResult Function(MerchantsInitialState value) initial,
    required TResult Function(MerchantsLoadingState value) loading,
    required TResult Function(MerchantsLoadedState value) loaded,
    required TResult Function(MerchantsErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MerchantsInitialState value)? initial,
    TResult Function(MerchantsLoadingState value)? loading,
    TResult Function(MerchantsLoadedState value)? loaded,
    TResult Function(MerchantsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MerchantsErrorState implements MerchantsStates {
  const factory MerchantsErrorState({required final String error}) =
      _$MerchantsErrorState;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantsErrorStateCopyWith<MerchantsErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
