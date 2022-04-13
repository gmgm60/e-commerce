// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemModel _$$_CartItemModelFromJson(Map<String, dynamic> json) =>
    _$_CartItemModel(
      productModel:
          ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_CartItemModelToJson(_$_CartItemModel instance) =>
    <String, dynamic>{
      'product': instance.productModel,
      'count': instance.count,
    };
