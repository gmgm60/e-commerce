// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) {
  return _FavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteModel {
  ProductModel get productModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteModelCopyWith<FavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteModelCopyWith<$Res> {
  factory $FavoriteModelCopyWith(
          FavoriteModel value, $Res Function(FavoriteModel) then) =
      _$FavoriteModelCopyWithImpl<$Res>;
  $Res call({ProductModel productModel});

  $ProductModelCopyWith<$Res> get productModel;
}

/// @nodoc
class _$FavoriteModelCopyWithImpl<$Res>
    implements $FavoriteModelCopyWith<$Res> {
  _$FavoriteModelCopyWithImpl(this._value, this._then);

  final FavoriteModel _value;
  // ignore: unused_field
  final $Res Function(FavoriteModel) _then;

  @override
  $Res call({
    Object? productModel = freezed,
  }) {
    return _then(_value.copyWith(
      productModel: productModel == freezed
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel,
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
abstract class _$FavoriteModelCopyWith<$Res>
    implements $FavoriteModelCopyWith<$Res> {
  factory _$FavoriteModelCopyWith(
          _FavoriteModel value, $Res Function(_FavoriteModel) then) =
      __$FavoriteModelCopyWithImpl<$Res>;
  @override
  $Res call({ProductModel productModel});

  @override
  $ProductModelCopyWith<$Res> get productModel;
}

/// @nodoc
class __$FavoriteModelCopyWithImpl<$Res>
    extends _$FavoriteModelCopyWithImpl<$Res>
    implements _$FavoriteModelCopyWith<$Res> {
  __$FavoriteModelCopyWithImpl(
      _FavoriteModel _value, $Res Function(_FavoriteModel) _then)
      : super(_value, (v) => _then(v as _FavoriteModel));

  @override
  _FavoriteModel get _value => super._value as _FavoriteModel;

  @override
  $Res call({
    Object? productModel = freezed,
  }) {
    return _then(_FavoriteModel(
      productModel: productModel == freezed
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteModel implements _FavoriteModel {
  _$_FavoriteModel({required this.productModel});

  factory _$_FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteModelFromJson(json);

  @override
  final ProductModel productModel;

  @override
  String toString() {
    return 'FavoriteModel(productModel: $productModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteModel &&
            const DeepCollectionEquality()
                .equals(other.productModel, productModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productModel));

  @JsonKey(ignore: true)
  @override
  _$FavoriteModelCopyWith<_FavoriteModel> get copyWith =>
      __$FavoriteModelCopyWithImpl<_FavoriteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteModelToJson(this);
  }
}

abstract class _FavoriteModel implements FavoriteModel {
  factory _FavoriteModel({required final ProductModel productModel}) =
      _$_FavoriteModel;

  factory _FavoriteModel.fromJson(Map<String, dynamic> json) =
      _$_FavoriteModel.fromJson;

  @override
  ProductModel get productModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoriteModelCopyWith<_FavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
