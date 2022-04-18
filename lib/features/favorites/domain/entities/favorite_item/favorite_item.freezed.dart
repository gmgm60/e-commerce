// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteItemTearOff {
  const _$FavoriteItemTearOff();

  _FavoriteItem call({required Product product}) {
    return _FavoriteItem(
      product: product,
    );
  }
}

/// @nodoc
const $FavoriteItem = _$FavoriteItemTearOff();

/// @nodoc
mixin _$FavoriteItem {
  Product get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteItemCopyWith<FavoriteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteItemCopyWith<$Res> {
  factory $FavoriteItemCopyWith(
          FavoriteItem value, $Res Function(FavoriteItem) then) =
      _$FavoriteItemCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$FavoriteItemCopyWithImpl<$Res> implements $FavoriteItemCopyWith<$Res> {
  _$FavoriteItemCopyWithImpl(this._value, this._then);

  final FavoriteItem _value;
  // ignore: unused_field
  final $Res Function(FavoriteItem) _then;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$FavoriteItemCopyWith<$Res>
    implements $FavoriteItemCopyWith<$Res> {
  factory _$FavoriteItemCopyWith(
          _FavoriteItem value, $Res Function(_FavoriteItem) then) =
      __$FavoriteItemCopyWithImpl<$Res>;
  @override
  $Res call({Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$FavoriteItemCopyWithImpl<$Res> extends _$FavoriteItemCopyWithImpl<$Res>
    implements _$FavoriteItemCopyWith<$Res> {
  __$FavoriteItemCopyWithImpl(
      _FavoriteItem _value, $Res Function(_FavoriteItem) _then)
      : super(_value, (v) => _then(v as _FavoriteItem));

  @override
  _FavoriteItem get _value => super._value as _FavoriteItem;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_FavoriteItem(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_FavoriteItem implements _FavoriteItem {
  _$_FavoriteItem({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'FavoriteItem(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteItem &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$FavoriteItemCopyWith<_FavoriteItem> get copyWith =>
      __$FavoriteItemCopyWithImpl<_FavoriteItem>(this, _$identity);
}

abstract class _FavoriteItem implements FavoriteItem {
  factory _FavoriteItem({required Product product}) = _$_FavoriteItem;

  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$FavoriteItemCopyWith<_FavoriteItem> get copyWith =>
      throw _privateConstructorUsedError;
}
