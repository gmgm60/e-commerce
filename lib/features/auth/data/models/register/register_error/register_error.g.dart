// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterError _$RegisterErrorFromJson(Map<String, dynamic> json) =>
    RegisterError(
      message: json['message'] as String?,
      error: json['errors'] == null
          ? null
          : Error.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterErrorToJson(RegisterError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.error,
    };

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'email': instance.email,
    };
