// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsCategory> categories) categoryLoaded,
    required TResult Function(String error) error,
    required TResult Function(List<Product> products) productsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) categoryLoaded,
    required TResult Function(CategoryErrorState value) error,
    required TResult Function(ProductsLoadedState value) productsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStatesCopyWith<$Res> {
  factory $CategoryStatesCopyWith(
          CategoryStates value, $Res Function(CategoryStates) then) =
      _$CategoryStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryStatesCopyWithImpl<$Res>
    implements $CategoryStatesCopyWith<$Res> {
  _$CategoryStatesCopyWithImpl(this._value, this._then);

  final CategoryStates _value;
  // ignore: unused_field
  final $Res Function(CategoryStates) _then;
}

/// @nodoc
abstract class _$$CategoryInitialStateCopyWith<$Res> {
  factory _$$CategoryInitialStateCopyWith(_$CategoryInitialState value,
          $Res Function(_$CategoryInitialState) then) =
      __$$CategoryInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryInitialStateCopyWithImpl<$Res>
    extends _$CategoryStatesCopyWithImpl<$Res>
    implements _$$CategoryInitialStateCopyWith<$Res> {
  __$$CategoryInitialStateCopyWithImpl(_$CategoryInitialState _value,
      $Res Function(_$CategoryInitialState) _then)
      : super(_value, (v) => _then(v as _$CategoryInitialState));

  @override
  _$CategoryInitialState get _value => super._value as _$CategoryInitialState;
}

/// @nodoc

class _$CategoryInitialState implements CategoryInitialState {
  const _$CategoryInitialState();

  @override
  String toString() {
    return 'CategoryStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsCategory> categories) categoryLoaded,
    required TResult Function(String error) error,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
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
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) categoryLoaded,
    required TResult Function(CategoryErrorState value) error,
    required TResult Function(ProductsLoadedState value) productsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoryInitialState implements CategoryStates {
  const factory CategoryInitialState() = _$CategoryInitialState;
}

/// @nodoc
abstract class _$$CategoryLoadingStateCopyWith<$Res> {
  factory _$$CategoryLoadingStateCopyWith(_$CategoryLoadingState value,
          $Res Function(_$CategoryLoadingState) then) =
      __$$CategoryLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryLoadingStateCopyWithImpl<$Res>
    extends _$CategoryStatesCopyWithImpl<$Res>
    implements _$$CategoryLoadingStateCopyWith<$Res> {
  __$$CategoryLoadingStateCopyWithImpl(_$CategoryLoadingState _value,
      $Res Function(_$CategoryLoadingState) _then)
      : super(_value, (v) => _then(v as _$CategoryLoadingState));

  @override
  _$CategoryLoadingState get _value => super._value as _$CategoryLoadingState;
}

/// @nodoc

class _$CategoryLoadingState implements CategoryLoadingState {
  const _$CategoryLoadingState();

  @override
  String toString() {
    return 'CategoryStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsCategory> categories) categoryLoaded,
    required TResult Function(String error) error,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
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
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) categoryLoaded,
    required TResult Function(CategoryErrorState value) error,
    required TResult Function(ProductsLoadedState value) productsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryLoadingState implements CategoryStates {
  const factory CategoryLoadingState() = _$CategoryLoadingState;
}

/// @nodoc
abstract class _$$CategoryLoadedStateCopyWith<$Res> {
  factory _$$CategoryLoadedStateCopyWith(_$CategoryLoadedState value,
          $Res Function(_$CategoryLoadedState) then) =
      __$$CategoryLoadedStateCopyWithImpl<$Res>;
  $Res call({List<ProductsCategory> categories});
}

/// @nodoc
class __$$CategoryLoadedStateCopyWithImpl<$Res>
    extends _$CategoryStatesCopyWithImpl<$Res>
    implements _$$CategoryLoadedStateCopyWith<$Res> {
  __$$CategoryLoadedStateCopyWithImpl(
      _$CategoryLoadedState _value, $Res Function(_$CategoryLoadedState) _then)
      : super(_value, (v) => _then(v as _$CategoryLoadedState));

  @override
  _$CategoryLoadedState get _value => super._value as _$CategoryLoadedState;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$CategoryLoadedState(
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductsCategory>,
    ));
  }
}

/// @nodoc

class _$CategoryLoadedState implements CategoryLoadedState {
  const _$CategoryLoadedState(
      {required final List<ProductsCategory> categories})
      : _categories = categories;

  final List<ProductsCategory> _categories;
  @override
  List<ProductsCategory> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryStates.categoryLoaded(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLoadedState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  _$$CategoryLoadedStateCopyWith<_$CategoryLoadedState> get copyWith =>
      __$$CategoryLoadedStateCopyWithImpl<_$CategoryLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsCategory> categories) categoryLoaded,
    required TResult Function(String error) error,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return categoryLoaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return categoryLoaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
    required TResult orElse(),
  }) {
    if (categoryLoaded != null) {
      return categoryLoaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) categoryLoaded,
    required TResult Function(CategoryErrorState value) error,
    required TResult Function(ProductsLoadedState value) productsLoaded,
  }) {
    return categoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
  }) {
    return categoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (categoryLoaded != null) {
      return categoryLoaded(this);
    }
    return orElse();
  }
}

abstract class CategoryLoadedState implements CategoryStates {
  const factory CategoryLoadedState(
          {required final List<ProductsCategory> categories}) =
      _$CategoryLoadedState;

  List<ProductsCategory> get categories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CategoryLoadedStateCopyWith<_$CategoryLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryErrorStateCopyWith<$Res> {
  factory _$$CategoryErrorStateCopyWith(_$CategoryErrorState value,
          $Res Function(_$CategoryErrorState) then) =
      __$$CategoryErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$CategoryErrorStateCopyWithImpl<$Res>
    extends _$CategoryStatesCopyWithImpl<$Res>
    implements _$$CategoryErrorStateCopyWith<$Res> {
  __$$CategoryErrorStateCopyWithImpl(
      _$CategoryErrorState _value, $Res Function(_$CategoryErrorState) _then)
      : super(_value, (v) => _then(v as _$CategoryErrorState));

  @override
  _$CategoryErrorState get _value => super._value as _$CategoryErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$CategoryErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryErrorState implements CategoryErrorState {
  const _$CategoryErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CategoryStates.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$CategoryErrorStateCopyWith<_$CategoryErrorState> get copyWith =>
      __$$CategoryErrorStateCopyWithImpl<_$CategoryErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsCategory> categories) categoryLoaded,
    required TResult Function(String error) error,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
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
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) categoryLoaded,
    required TResult Function(CategoryErrorState value) error,
    required TResult Function(ProductsLoadedState value) productsLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoryErrorState implements CategoryStates {
  const factory CategoryErrorState({required final String error}) =
      _$CategoryErrorState;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CategoryErrorStateCopyWith<_$CategoryErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsLoadedStateCopyWith<$Res> {
  factory _$$ProductsLoadedStateCopyWith(_$ProductsLoadedState value,
          $Res Function(_$ProductsLoadedState) then) =
      __$$ProductsLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ProductsLoadedStateCopyWithImpl<$Res>
    extends _$CategoryStatesCopyWithImpl<$Res>
    implements _$$ProductsLoadedStateCopyWith<$Res> {
  __$$ProductsLoadedStateCopyWithImpl(
      _$ProductsLoadedState _value, $Res Function(_$ProductsLoadedState) _then)
      : super(_value, (v) => _then(v as _$ProductsLoadedState));

  @override
  _$ProductsLoadedState get _value => super._value as _$ProductsLoadedState;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$ProductsLoadedState(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsLoadedState implements ProductsLoadedState {
  const _$ProductsLoadedState({required final List<Product> products})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CategoryStates.productsLoaded(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoadedState &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$ProductsLoadedStateCopyWith<_$ProductsLoadedState> get copyWith =>
      __$$ProductsLoadedStateCopyWithImpl<_$ProductsLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsCategory> categories) categoryLoaded,
    required TResult Function(String error) error,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return productsLoaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return productsLoaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsCategory> categories)? categoryLoaded,
    TResult Function(String error)? error,
    TResult Function(List<Product> products)? productsLoaded,
    required TResult orElse(),
  }) {
    if (productsLoaded != null) {
      return productsLoaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) categoryLoaded,
    required TResult Function(CategoryErrorState value) error,
    required TResult Function(ProductsLoadedState value) productsLoaded,
  }) {
    return productsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
  }) {
    return productsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? categoryLoaded,
    TResult Function(CategoryErrorState value)? error,
    TResult Function(ProductsLoadedState value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (productsLoaded != null) {
      return productsLoaded(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadedState implements CategoryStates {
  const factory ProductsLoadedState({required final List<Product> products}) =
      _$ProductsLoadedState;

  List<Product> get products => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProductsLoadedStateCopyWith<_$ProductsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
