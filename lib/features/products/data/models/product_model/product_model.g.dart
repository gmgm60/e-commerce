// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int,
      catId: json['category_id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.catId,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'discount': instance.discount,
      'quantity': instance.quantity,
    };
