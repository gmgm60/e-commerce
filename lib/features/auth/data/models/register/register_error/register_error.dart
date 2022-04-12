import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_error.g.dart';

@JsonSerializable()
class RegisterError {
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'errors')
  Error? error;

  RegisterError({
    this.message,
    this.error,
  });

  factory RegisterError.fromJson(Map<String, dynamic> json) =>
      _$RegisterErrorFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterErrorToJson(this);
}

@JsonSerializable()
class Error {
  @JsonKey(name: 'email')
  List<String>? email;

  Error({
    this.email,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
