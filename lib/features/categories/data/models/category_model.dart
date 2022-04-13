import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  List<CategoryData>? data;
  String? message;
  int? status;

  CategoryModel({
    this.data,
    this.message,
    this.status,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

@JsonSerializable()
class CategoryData {
  int id;
  String? name;
  String? description;
  String? image;

  CategoryData({
    required this.id,
    this.name,
    this.description,
    this.image,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDataToJson(this);
}
