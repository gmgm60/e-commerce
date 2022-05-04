// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_edit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEdit {
  int get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartEditCopyWith<CartEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEditCopyWith<$Res> {
  factory $CartEditCopyWith(CartEdit value, $Res Function(CartEdit) then) =
      _$CartEditCopyWithImpl<$Res>;
  $Res call({int productId, int quantity});
}

/// @nodoc
class _$CartEditCopyWithImpl<$Res> implements $CartEditCopyWith<$Res> {
  _$CartEditCopyWithImpl(this._value, this._then);

  final CartEdit _value;
  // ignore: unused_field
  final $Res Function(CartEdit) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CartEditCopyWith<$Res> implements $CartEditCopyWith<$Res> {
  factory _$CartEditCopyWith(_CartEdit value, $Res Function(_CartEdit) then) =
      __$CartEditCopyWithImpl<$Res>;
  @override
  $Res call({int productId, int quantity});
}

/// @nodoc
class __$CartEditCopyWithImpl<$Res> extends _$CartEditCopyWithImpl<$Res>
    implements _$CartEditCopyWith<$Res> {
  __$CartEditCopyWithImpl(_CartEdit _value, $Res Function(_CartEdit) _then)
      : super(_value, (v) => _then(v as _CartEdit));

  @override
  _CartEdit get _value => super._value as _CartEdit;

  @override
  $Res call({
    Object? productId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_CartEdit(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CartEdit implements _CartEdit {
  _$_CartEdit({required this.productId, required this.quantity});

  @override
  final int productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEdit(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartEdit &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$CartEditCopyWith<_CartEdit> get copyWith =>
      __$CartEditCopyWithImpl<_CartEdit>(this, _$identity);
}

abstract class _CartEdit implements CartEdit {
  factory _CartEdit(
      {required final int productId,
      required final int quantity}) = _$_CartEdit;

  @override
  int get productId => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartEditCopyWith<_CartEdit> get copyWith =>
      throw _privateConstructorUsedError;
}
