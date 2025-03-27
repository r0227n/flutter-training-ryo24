import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.success(T success) = Ok<T>;
  const factory Result.error(T error) = Error<T>;
}
