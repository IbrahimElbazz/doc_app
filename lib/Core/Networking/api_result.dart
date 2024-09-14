import 'package:docdoc/Core/Networking/api_error_handler.dart';
import 'package:docdoc/Core/Networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler error) = Failure<T>;
}
