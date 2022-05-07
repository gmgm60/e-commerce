// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatesCopyWith<$Res> {
  factory $ProfileStatesCopyWith(
          ProfileStates value, $Res Function(ProfileStates) then) =
      _$ProfileStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStatesCopyWithImpl<$Res>
    implements $ProfileStatesCopyWith<$Res> {
  _$ProfileStatesCopyWithImpl(this._value, this._then);

  final ProfileStates _value;
  // ignore: unused_field
  final $Res Function(ProfileStates) _then;
}

/// @nodoc
abstract class _$$ProfileInitialStateCopyWith<$Res> {
  factory _$$ProfileInitialStateCopyWith(_$ProfileInitialState value,
          $Res Function(_$ProfileInitialState) then) =
      __$$ProfileInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInitialStateCopyWithImpl<$Res>
    extends _$ProfileStatesCopyWithImpl<$Res>
    implements _$$ProfileInitialStateCopyWith<$Res> {
  __$$ProfileInitialStateCopyWithImpl(
      _$ProfileInitialState _value, $Res Function(_$ProfileInitialState) _then)
      : super(_value, (v) => _then(v as _$ProfileInitialState));

  @override
  _$ProfileInitialState get _value => super._value as _$ProfileInitialState;
}

/// @nodoc

class _$ProfileInitialState implements ProfileInitialState {
  const _$ProfileInitialState();

  @override
  String toString() {
    return 'ProfileStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitialState implements ProfileStates {
  const factory ProfileInitialState() = _$ProfileInitialState;
}

/// @nodoc
abstract class _$$ProfileLoadingStateCopyWith<$Res> {
  factory _$$ProfileLoadingStateCopyWith(_$ProfileLoadingState value,
          $Res Function(_$ProfileLoadingState) then) =
      __$$ProfileLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingStateCopyWithImpl<$Res>
    extends _$ProfileStatesCopyWithImpl<$Res>
    implements _$$ProfileLoadingStateCopyWith<$Res> {
  __$$ProfileLoadingStateCopyWithImpl(
      _$ProfileLoadingState _value, $Res Function(_$ProfileLoadingState) _then)
      : super(_value, (v) => _then(v as _$ProfileLoadingState));

  @override
  _$ProfileLoadingState get _value => super._value as _$ProfileLoadingState;
}

/// @nodoc

class _$ProfileLoadingState implements ProfileLoadingState {
  const _$ProfileLoadingState();

  @override
  String toString() {
    return 'ProfileStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadingState implements ProfileStates {
  const factory ProfileLoadingState() = _$ProfileLoadingState;
}

/// @nodoc
abstract class _$$ProfileLoadedStateCopyWith<$Res> {
  factory _$$ProfileLoadedStateCopyWith(_$ProfileLoadedState value,
          $Res Function(_$ProfileLoadedState) then) =
      __$$ProfileLoadedStateCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class __$$ProfileLoadedStateCopyWithImpl<$Res>
    extends _$ProfileStatesCopyWithImpl<$Res>
    implements _$$ProfileLoadedStateCopyWith<$Res> {
  __$$ProfileLoadedStateCopyWithImpl(
      _$ProfileLoadedState _value, $Res Function(_$ProfileLoadedState) _then)
      : super(_value, (v) => _then(v as _$ProfileLoadedState));

  @override
  _$ProfileLoadedState get _value => super._value as _$ProfileLoadedState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$ProfileLoadedState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$ProfileLoadedState implements ProfileLoadedState {
  const _$ProfileLoadedState({required this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'ProfileStates.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$ProfileLoadedStateCopyWith<_$ProfileLoadedState> get copyWith =>
      __$$ProfileLoadedStateCopyWithImpl<_$ProfileLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(String error)? error,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadedState implements ProfileStates {
  const factory ProfileLoadedState({required final User? user}) =
      _$ProfileLoadedState;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProfileLoadedStateCopyWith<_$ProfileLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileErrorStateCopyWith<$Res> {
  factory _$$ProfileErrorStateCopyWith(
          _$ProfileErrorState value, $Res Function(_$ProfileErrorState) then) =
      __$$ProfileErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$ProfileErrorStateCopyWithImpl<$Res>
    extends _$ProfileStatesCopyWithImpl<$Res>
    implements _$$ProfileErrorStateCopyWith<$Res> {
  __$$ProfileErrorStateCopyWithImpl(
      _$ProfileErrorState _value, $Res Function(_$ProfileErrorState) _then)
      : super(_value, (v) => _then(v as _$ProfileErrorState));

  @override
  _$ProfileErrorState get _value => super._value as _$ProfileErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ProfileErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileErrorState implements ProfileErrorState {
  const _$ProfileErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileStates.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ProfileErrorStateCopyWith<_$ProfileErrorState> get copyWith =>
      __$$ProfileErrorStateCopyWithImpl<_$ProfileErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileErrorState implements ProfileStates {
  const factory ProfileErrorState({required final String error}) =
      _$ProfileErrorState;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProfileErrorStateCopyWith<_$ProfileErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
