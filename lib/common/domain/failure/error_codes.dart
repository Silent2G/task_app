import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';
import 'package:task_app/common/domain/failure/i_failure.dart';
import 'package:task_app/common/domain/failure/uncaught_failure.dart';

mixin ErrorCodes {
  ///
  /// Some statuses that we handle, restrictive codes, etc
  ///

  static const String userNotFound = 'user_not_found';

  static const String restricted = 'restricted';
  static const String unauthorized = 'unauthorized';
  static const String accessDenied = 'access_denied';

  IFailure mapCodeToFailure(IErrorResponse error) {
    final code = error.code;

    switch (code) {
      // check another codes
      default:
        return UncaughtFailure(message: code);
    }
  }
}
