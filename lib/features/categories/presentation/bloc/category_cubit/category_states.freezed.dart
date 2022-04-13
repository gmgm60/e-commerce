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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryStatesTearOff {
  const _$CategoryStatesTearOff();

  CategoryInitialState initial() {
    return const CategoryInitialState();
  }

  CategoryLoadingState loading() {
    return const CategoryLoadingState();
  }

  CategoryLoadedState loaded({required List<Category> categories}) {
    return CategoryLoadedState(
      categories: categories,
    );
  }

  CategoryErrorState error({required String error}) {
    return CategoryErrorState(
      error: error,
    );
  }
}

/// @nodoc
const $CategoryStates = _$CategoryStatesTearOff();

/// @nodoc
mixin _$CategoryStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
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
abstract class $CategoryInitialStateCopyWith<$Res> {
  factory $CategoryInitialStateCopyWith(CategoryInitialState value,
          $Res Function(CategoryInitialState) then) =
      _$CategoryInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryInitialStateCopyWithImpl<$Res>
    extends _$CategoryStatesCopyWithImpl<$Res>
    implements $CategoryInitialStateCopyWith<$Res> {
  _$CategoryInitialStateCopyWithImpl(
      CategoryInitialState _value, $Res Function(CategoryInitialState) _then)
      : super(_value, (v) => _then(v as CategoryInitialState));

  @override
  CategoryInitialState get _value => super._value as CategoryInitialState;
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
        (other.runtimeType == runtimeType && other is CategoryInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
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
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
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
abstract class $CategoryLoadingStateCopyWith<$Res> {
  factory $CategoryLoadingStateCopyWith(CategoryLoadingState value,
          $Res Function(CategoryLoadingState) then) =
      _$CategoryLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryLoadingStateCopyWithImpl<$Res>
    extends _$CategoryStatesCopyWithImpl<$Res>
    implements $CategoryLoadingStateCopyWith<$Res> {
  _$CategoryLoadingStateCopyWithImpl(
      CategoryLoadingState _value, $Res Function(CategoryLoadingState) _then)
      : super(_value, (v) => _then(v as CategoryLoadingState));

  @override
  CategoryLoadingState get _value => super._value as CategoryLoadingState;
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
        (other.runtimeType == runtimeType && other is CategoryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
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
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
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
abstract class $CategoryLoadedStateCopyWith<$Res> {
  factory $CategoryLoadedStateCopyWith(
          CategoryLoadedState value, $Res Function(CategoryLoadedState) then) =
      _$CategoryLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class _$CategoryLoadedStateCopyWithImpl<$Res>
    extends _$CategoryStatesCopyWithImpl<$Res>
    implements $CategoryLoadedStateCopyWith<$Res> {
  _$CategoryLoadedStateCopyWithImpl(
      CategoryLoadedState _value, $Res Function(CategoryLoadedState) _then)
      : super(_value, (v) => _then(v as CategoryLoadedState));

  @override
  CategoryLoadedState get _value => super._value as CategoryLoadedState;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(CategoryLoadedState(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoryLoadedState implements CategoryLoadedState {
  const _$CategoryLoadedState({required this.categories});

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'CategoryStates.loaded(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryLoadedState &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  $CategoryLoadedStateCopyWith<CategoryLoadedState> get copyWith =>
      _$CategoryLoadedStateCopyWithImpl<CategoryLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function(String error)? error,
  }) {
    return loaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CategoryLoadedState implements CategoryStates {
  const factory CategoryLoadedState({required List<Category> categories}) =
      _$CategoryLoadedState;

  List<Category> get categories;
  @JsonKey(ignore: true)
  $CategoryLoadedStateCopyWith<CategoryLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryErrorStateCopyWith<$Res> {
  factory $CategoryErrorStateCopyWith(
          CategoryErrorState value, $Res Function(CategoryErrorState) then) =
      _$CategoryErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$CategoryErrorStateCopyWithImpl<$Res>
    extends _$CategoryStatesCopyWithImpl<$Res>
    implements $CategoryErrorStateCopyWith<$Res> {
  _$CategoryErrorStateCopyWithImpl(
      CategoryErrorState _value, $Res Function(CategoryErrorState) _then)
      : super(_value, (v) => _then(v as CategoryErrorState));

  @override
  CategoryErrorState get _value => super._value as CategoryErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CategoryErrorState(
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
            other is CategoryErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $CategoryErrorStateCopyWith<CategoryErrorState> get copyWith =>
      _$CategoryErrorStateCopyWithImpl<CategoryErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
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
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoryErrorState implements CategoryStates {
  const factory CategoryErrorState({required String error}) =
      _$CategoryErrorState;

  String get error;
  @JsonKey(ignore: true)
  $CategoryErrorStateCopyWith<CategoryErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
