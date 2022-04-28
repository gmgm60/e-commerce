import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  final List<CategoryData> data;
  final String message;

  CategoryModel({
    required this.data,
    required this.message,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

@JsonSerializable()
class CategoryData {
  final int id;
  final String name;
  final String description;
  final String image;

  CategoryData({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDataToJson(this);
}
