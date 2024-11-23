import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';

class UncaughtErrorResponse extends IErrorResponse {
  UncaughtErrorResponse({
    required super.status,
    required super.code,
  });
}
