// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int,
      catId: json['cat_id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cat_id': instance.catId,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'is_available': instance.isAvailable,
    };
