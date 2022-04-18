// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersStatesTearOff {
  const _$OrdersStatesTearOff();

  OrdersInitialState initial() {
    return const OrdersInitialState();
  }

  OrdersLoadingState loading() {
    return const OrdersLoadingState();
  }

  OrdersLoadedState loaded({required List<Order> order}) {
    return OrdersLoadedState(
      order: order,
    );
  }

  OrdersErrorState error({required String error}) {
    return OrdersErrorState(
      error: error,
    );
  }
}

/// @nodoc
const $OrdersStates = _$OrdersStatesTearOff();

/// @nodoc
mixin _$OrdersStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Order> order) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrdersInitialState value) initial,
    required TResult Function(OrdersLoadingState value) loading,
    required TResult Function(OrdersLoadedState value) loaded,
    required TResult Function(OrdersErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStatesCopyWith<$Res> {
  factory $OrdersStatesCopyWith(
          OrdersStates value, $Res Function(OrdersStates) then) =
      _$OrdersStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersStatesCopyWithImpl<$Res> implements $OrdersStatesCopyWith<$Res> {
  _$OrdersStatesCopyWithImpl(this._value, this._then);

  final OrdersStates _value;
  // ignore: unused_field
  final $Res Function(OrdersStates) _then;
}

/// @nodoc
abstract class $OrdersInitialStateCopyWith<$Res> {
  factory $OrdersInitialStateCopyWith(
          OrdersInitialState value, $Res Function(OrdersInitialState) then) =
      _$OrdersInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersInitialStateCopyWithImpl<$Res>
    extends _$OrdersStatesCopyWithImpl<$Res>
    implements $OrdersInitialStateCopyWith<$Res> {
  _$OrdersInitialStateCopyWithImpl(
      OrdersInitialState _value, $Res Function(OrdersInitialState) _then)
      : super(_value, (v) => _then(v as OrdersInitialState));

  @override
  OrdersInitialState get _value => super._value as OrdersInitialState;
}

/// @nodoc

class _$OrdersInitialState implements OrdersInitialState {
  const _$OrdersInitialState();

  @override
  String toString() {
    return 'OrdersStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrdersInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Order> order) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
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
    required TResult Function(OrdersInitialState value) initial,
    required TResult Function(OrdersLoadingState value) loading,
    required TResult Function(OrdersLoadedState value) loaded,
    required TResult Function(OrdersErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OrdersInitialState implements OrdersStates {
  const factory OrdersInitialState() = _$OrdersInitialState;
}

/// @nodoc
abstract class $OrdersLoadingStateCopyWith<$Res> {
  factory $OrdersLoadingStateCopyWith(
          OrdersLoadingState value, $Res Function(OrdersLoadingState) then) =
      _$OrdersLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersLoadingStateCopyWithImpl<$Res>
    extends _$OrdersStatesCopyWithImpl<$Res>
    implements $OrdersLoadingStateCopyWith<$Res> {
  _$OrdersLoadingStateCopyWithImpl(
      OrdersLoadingState _value, $Res Function(OrdersLoadingState) _then)
      : super(_value, (v) => _then(v as OrdersLoadingState));

  @override
  OrdersLoadingState get _value => super._value as OrdersLoadingState;
}

/// @nodoc

class _$OrdersLoadingState implements OrdersLoadingState {
  const _$OrdersLoadingState();

  @override
  String toString() {
    return 'OrdersStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrdersLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Order> order) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
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
    required TResult Function(OrdersInitialState value) initial,
    required TResult Function(OrdersLoadingState value) loading,
    required TResult Function(OrdersLoadedState value) loaded,
    required TResult Function(OrdersErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OrdersLoadingState implements OrdersStates {
  const factory OrdersLoadingState() = _$OrdersLoadingState;
}

/// @nodoc
abstract class $OrdersLoadedStateCopyWith<$Res> {
  factory $OrdersLoadedStateCopyWith(
          OrdersLoadedState value, $Res Function(OrdersLoadedState) then) =
      _$OrdersLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Order> order});
}

/// @nodoc
class _$OrdersLoadedStateCopyWithImpl<$Res>
    extends _$OrdersStatesCopyWithImpl<$Res>
    implements $OrdersLoadedStateCopyWith<$Res> {
  _$OrdersLoadedStateCopyWithImpl(
      OrdersLoadedState _value, $Res Function(OrdersLoadedState) _then)
      : super(_value, (v) => _then(v as OrdersLoadedState));

  @override
  OrdersLoadedState get _value => super._value as OrdersLoadedState;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(OrdersLoadedState(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$OrdersLoadedState implements OrdersLoadedState {
  const _$OrdersLoadedState({required this.order});

  @override
  final List<Order> order;

  @override
  String toString() {
    return 'OrdersStates.loaded(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrdersLoadedState &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  $OrdersLoadedStateCopyWith<OrdersLoadedState> get copyWith =>
      _$OrdersLoadedStateCopyWithImpl<OrdersLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Order> order) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
    TResult Function(String error)? error,
  }) {
    return loaded?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrdersInitialState value) initial,
    required TResult Function(OrdersLoadingState value) loading,
    required TResult Function(OrdersLoadedState value) loaded,
    required TResult Function(OrdersErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class OrdersLoadedState implements OrdersStates {
  const factory OrdersLoadedState({required List<Order> order}) =
      _$OrdersLoadedState;

  List<Order> get order;
  @JsonKey(ignore: true)
  $OrdersLoadedStateCopyWith<OrdersLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersErrorStateCopyWith<$Res> {
  factory $OrdersErrorStateCopyWith(
          OrdersErrorState value, $Res Function(OrdersErrorState) then) =
      _$OrdersErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$OrdersErrorStateCopyWithImpl<$Res>
    extends _$OrdersStatesCopyWithImpl<$Res>
    implements $OrdersErrorStateCopyWith<$Res> {
  _$OrdersErrorStateCopyWithImpl(
      OrdersErrorState _value, $Res Function(OrdersErrorState) _then)
      : super(_value, (v) => _then(v as OrdersErrorState));

  @override
  OrdersErrorState get _value => super._value as OrdersErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(OrdersErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrdersErrorState implements OrdersErrorState {
  const _$OrdersErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'OrdersStates.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrdersErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $OrdersErrorStateCopyWith<OrdersErrorState> get copyWith =>
      _$OrdersErrorStateCopyWithImpl<OrdersErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Order> order) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Order> order)? loaded,
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
    required TResult Function(OrdersInitialState value) initial,
    required TResult Function(OrdersLoadingState value) loading,
    required TResult Function(OrdersLoadedState value) loaded,
    required TResult Function(OrdersErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersInitialState value)? initial,
    TResult Function(OrdersLoadingState value)? loading,
    TResult Function(OrdersLoadedState value)? loaded,
    TResult Function(OrdersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OrdersErrorState implements OrdersStates {
  const factory OrdersErrorState({required String error}) = _$OrdersErrorState;

  String get error;
  @JsonKey(ignore: true)
  $OrdersErrorStateCopyWith<OrdersErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
