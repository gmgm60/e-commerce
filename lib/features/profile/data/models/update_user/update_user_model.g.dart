// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserModel _$UpdateUserModelFromJson(Map<String, dynamic> json) =>
    UpdateUserModel(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      image: fileToJson(json['image'] as File?),
    );

Map<String, dynamic> _$UpdateUserModelToJson(UpdateUserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'image': fileToJson(instance.image),
    };
