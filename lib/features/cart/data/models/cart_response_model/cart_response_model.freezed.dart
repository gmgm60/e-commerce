// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartResponseModel _$CartResponseModelFromJson(Map<String, dynamic> json) {
  return _CartResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CartResponseModel {
  List<CartItemModel> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "Message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartResponseModelCopyWith<CartResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResponseModelCopyWith<$Res> {
  factory $CartResponseModelCopyWith(
          CartResponseModel value, $Res Function(CartResponseModel) then) =
      _$CartResponseModelCopyWithImpl<$Res>;
  $Res call(
      {List<CartItemModel> data, @JsonKey(name: "Message") String message});
}

/// @nodoc
class _$CartResponseModelCopyWithImpl<$Res>
    implements $CartResponseModelCopyWith<$Res> {
  _$CartResponseModelCopyWithImpl(this._value, this._then);

  final CartResponseModel _value;
  // ignore: unused_field
  final $Res Function(CartResponseModel) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CartResponseModelCopyWith<$Res>
    implements $CartResponseModelCopyWith<$Res> {
  factory _$CartResponseModelCopyWith(
          _CartResponseModel value, $Res Function(_CartResponseModel) then) =
      __$CartResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CartItemModel> data, @JsonKey(name: "Message") String message});
}

/// @nodoc
class __$CartResponseModelCopyWithImpl<$Res>
    extends _$CartResponseModelCopyWithImpl<$Res>
    implements _$CartResponseModelCopyWith<$Res> {
  __$CartResponseModelCopyWithImpl(
      _CartResponseModel _value, $Res Function(_CartResponseModel) _then)
      : super(_value, (v) => _then(v as _CartResponseModel));

  @override
  _CartResponseModel get _value => super._value as _CartResponseModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_CartResponseModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartResponseModel implements _CartResponseModel {
  _$_CartResponseModel(
      {required final List<CartItemModel> data,
      @JsonKey(name: "Message") required this.message})
      : _data = data;

  factory _$_CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartResponseModelFromJson(json);

  final List<CartItemModel> _data;
  @override
  List<CartItemModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "Message")
  final String message;

  @override
  String toString() {
    return 'CartResponseModel(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartResponseModel &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$CartResponseModelCopyWith<_CartResponseModel> get copyWith =>
      __$CartResponseModelCopyWithImpl<_CartResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartResponseModelToJson(this);
  }
}

abstract class _CartResponseModel implements CartResponseModel {
  factory _CartResponseModel(
          {required final List<CartItemModel> data,
          @JsonKey(name: "Message") required final String message}) =
      _$_CartResponseModel;

  factory _CartResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CartResponseModel.fromJson;

  @override
  List<CartItemModel> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Message")
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartResponseModelCopyWith<_CartResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
