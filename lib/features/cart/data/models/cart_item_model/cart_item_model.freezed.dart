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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
class _$CartItemModelTearOff {
  const _$CartItemModelTearOff();

  _CartItemModel call({required int id, required int count}) {
    return _CartItemModel(
      id: id,
      count: count,
    );
  }

  CartItemModel fromJson(Map<String, Object?> json) {
    return CartItemModel.fromJson(json);
  }
}

/// @nodoc
const $CartItemModel = _$CartItemModelTearOff();

/// @nodoc
mixin _$CartItemModel {
  int get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

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
  $Res call({int id, int count});
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
    Object? id = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CartItemModelCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$CartItemModelCopyWith(
          _CartItemModel value, $Res Function(_CartItemModel) then) =
      __$CartItemModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, int count});
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
    Object? id = freezed,
    Object? count = freezed,
  }) {
    return _then(_CartItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItemModel implements _CartItemModel {
  _$_CartItemModel({required this.id, required this.count});

  factory _$_CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemModelFromJson(json);

  @override
  final int id;
  @override
  final int count;

  @override
  String toString() {
    return 'CartItemModel(id: $id, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(count));

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
  factory _CartItemModel({required int id, required int count}) =
      _$_CartItemModel;

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartItemModel.fromJson;

  @override
  int get id;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$CartItemModelCopyWith<_CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
