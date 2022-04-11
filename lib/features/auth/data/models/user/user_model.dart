import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: 'user')
  UserModelData user;
  @JsonKey(name: 'token')
  String token;

  UserModel({
    required this.user,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class UserModelData {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'user_name')
  String userName;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'role')
  int role;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'updated_at')
  String updatedAt;

  @JsonKey(name: 'created_at')
  String createdAt;

  UserModelData({
    required this.id,
    required this.userName,
    required this.email,
    required this.role,
    this.image,
    required this.updatedAt,
    required this.createdAt,
  });

  factory UserModelData.fromJson(Map<String, dynamic> json) =>
      _$UserModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelDataToJson(this);
}
