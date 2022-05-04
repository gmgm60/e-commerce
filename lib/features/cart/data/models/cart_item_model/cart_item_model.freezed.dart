// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartItemModel {
  @JsonKey(name: "product")
  ProductModel get productModel => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemModelCopyWith<CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemModelCopyWith<$Res> {
  factory $CartItemModelCopyWith(
          CartItemModel value, $Res Function(CartItemModel) then) =
      _$CartItemModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "product") ProductModel productModel, int quantity});

  $ProductModelCopyWith<$Res> get productModel;
}

/// @nodoc
class _$CartItemModelCopyWithImpl<$Res>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._value, this._then);

  final CartItemModel _value;
  // ignore: unused_field
  final $Res Function(CartItemModel) _then;

  @override
  $Res call({
    Object? productModel = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      productModel: productModel == freezed
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ProductModelCopyWith<$Res> get productModel {
    return $ProductModelCopyWith<$Res>(_value.productModel, (value) {
      return _then(_value.copyWith(productModel: value));
    });
  }
}

/// @nodoc
abstract class _$CartItemModelCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$CartItemModelCopyWith(
          _CartItemModel value, $Res Function(_CartItemModel) then) =
      __$CartItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "product") ProductModel productModel, int quantity});

  @override
  $ProductModelCopyWith<$Res> get productModel;
}

/// @nodoc
class __$CartItemModelCopyWithImpl<$Res>
    extends _$CartItemModelCopyWithImpl<$Res>
    implements _$CartItemModelCopyWith<$Res> {
  __$CartItemModelCopyWithImpl(
      _CartItemModel _value, $Res Function(_CartItemModel) _then)
      : super(_value, (v) => _then(v as _CartItemModel));

  @override
  _CartItemModel get _value => super._value as _CartItemModel;

  @override
  $Res call({
    Object? productModel = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_CartItemModel(
      productModel: productModel == freezed
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItemModel implements _CartItemModel {
  _$_CartItemModel(
      {@JsonKey(name: "product") required this.productModel,
      required this.quantity});

  factory _$_CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemModelFromJson(json);

  @override
  @JsonKey(name: "product")
  final ProductModel productModel;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartItemModel(productModel: $productModel, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItemModel &&
            const DeepCollectionEquality()
                .equals(other.productModel, productModel) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productModel),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$CartItemModelCopyWith<_CartItemModel> get copyWith =>
      __$CartItemModelCopyWithImpl<_CartItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemModelToJson(this);
  }
}

abstract class _CartItemModel implements CartItemModel {
  factory _CartItemModel(
      {@JsonKey(name: "product") required final ProductModel productModel,
      required final int quantity}) = _$_CartItemModel;

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartItemModel.fromJson;

  @override
  @JsonKey(name: "product")
  ProductModel get productModel => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartItemModelCopyWith<_CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
