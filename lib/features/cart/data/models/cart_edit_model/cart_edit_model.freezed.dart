// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_edit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartEditModel _$CartEditModelFromJson(Map<String, dynamic> json) {
  return _CartEditModel.fromJson(json);
}

/// @nodoc
mixin _$CartEditModel {
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartEditModelCopyWith<CartEditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEditModelCopyWith<$Res> {
  factory $CartEditModelCopyWith(
          CartEditModel value, $Res Function(CartEditModel) then) =
      _$CartEditModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "product_id") int productId, int quantity});
}

/// @nodoc
class _$CartEditModelCopyWithImpl<$Res>
    implements $CartEditModelCopyWith<$Res> {
  _$CartEditModelCopyWithImpl(this._value, this._then);

  final CartEditModel _value;
  // ignore: unused_field
  final $Res Function(CartEditModel) _then;

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
abstract class _$CartEditModelCopyWith<$Res>
    implements $CartEditModelCopyWith<$Res> {
  factory _$CartEditModelCopyWith(
          _CartEditModel value, $Res Function(_CartEditModel) then) =
      __$CartEditModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "product_id") int productId, int quantity});
}

/// @nodoc
class __$CartEditModelCopyWithImpl<$Res>
    extends _$CartEditModelCopyWithImpl<$Res>
    implements _$CartEditModelCopyWith<$Res> {
  __$CartEditModelCopyWithImpl(
      _CartEditModel _value, $Res Function(_CartEditModel) _then)
      : super(_value, (v) => _then(v as _CartEditModel));

  @override
  _CartEditModel get _value => super._value as _CartEditModel;

  @override
  $Res call({
    Object? productId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_CartEditModel(
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
@JsonSerializable()
class _$_CartEditModel implements _CartEditModel {
  _$_CartEditModel(
      {@JsonKey(name: "product_id") required this.productId,
      required this.quantity});

  factory _$_CartEditModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartEditModelFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEditModel(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartEditModel &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$CartEditModelCopyWith<_CartEditModel> get copyWith =>
      __$CartEditModelCopyWithImpl<_CartEditModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartEditModelToJson(this);
  }
}

abstract class _CartEditModel implements CartEditModel {
  factory _CartEditModel(
      {@JsonKey(name: "product_id") required final int productId,
      required final int quantity}) = _$_CartEditModel;

  factory _CartEditModel.fromJson(Map<String, dynamic> json) =
      _$_CartEditModel.fromJson;

  @override
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartEditModelCopyWith<_CartEditModel> get copyWith =>
      throw _privateConstructorUsedError;
}
