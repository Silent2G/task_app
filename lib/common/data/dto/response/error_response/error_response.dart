import 'package:json_annotation/json_annotation.dart';
import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';

part 'error_response.g.dart';

@JsonSerializable()
class ErrorResponse extends IErrorResponse {
  const ErrorResponse({
    required super.status,
    required super.code,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
