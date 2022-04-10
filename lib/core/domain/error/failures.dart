
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';
@Freezed()
class Failures with _$Failures {
  factory Failures.noUser(String error) = _noUser;
  factory Failures.serverError(String error) = _serverError;
  factory Failures.localStorageError(String error) = _localStorageError;

}