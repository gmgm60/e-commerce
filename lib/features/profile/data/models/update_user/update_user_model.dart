import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'update_user_model.g.dart';

@JsonSerializable()
class UpdateUserModel {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'image', toJson: fileToJson, fromJson: fileToJson)
  final File? image;

  UpdateUserModel({
    this.name,
    this.phone,
    this.address,
    this.image,
  });

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserModelToJson(this);
}

File? fileToJson(File? file) {
  return file;
}
