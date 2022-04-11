// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

  _ProductModel call(
      {required int id,
      @JsonKey(name: "cat_id") required int catId,
      required String name,
      required String description,
      required String image,
      required double price,
      required double discount,
      @JsonKey(name: "is_available") required bool isAvailable}) {
    return _ProductModel(
      id: id,
      catId: catId,
      name: name,
      description: description,
      image: image,
      price: price,
      discount: discount,
      isAvailable: isAvailable,
    );
  }

  ProductModel fromJson(Map<String, Object?> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "cat_id")
  int get catId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available")
  bool get isAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: "cat_id") int catId,
      String name,
      String description,
      String image,
      double price,
      double discount,
      @JsonKey(name: "is_available") bool isAvailable});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? catId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      catId: catId == freezed
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: "cat_id") int catId,
      String name,
      String description,
      String image,
      double price,
      double discount,
      @JsonKey(name: "is_available") bool isAvailable});
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? catId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_ProductModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      catId: catId == freezed
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  _$_ProductModel(
      {required this.id,
      @JsonKey(name: "cat_id") required this.catId,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.discount,
      @JsonKey(name: "is_available") required this.isAvailable});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "cat_id")
  final int catId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;
  @override
  final double price;
  @override
  final double discount;
  @override
  @JsonKey(name: "is_available")
  final bool isAvailable;

  @override
  String toString() {
    return 'ProductModel(id: $id, catId: $catId, name: $name, description: $description, image: $image, price: $price, discount: $discount, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.catId, catId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality()
                .equals(other.isAvailable, isAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(catId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(isAvailable));

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
          {required int id,
          @JsonKey(name: "cat_id") required int catId,
          required String name,
          required String description,
          required String image,
          required double price,
          required double discount,
          @JsonKey(name: "is_available") required bool isAvailable}) =
      _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "cat_id")
  int get catId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  double get price;
  @override
  double get discount;
  @override
  @JsonKey(name: "is_available")
  bool get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
