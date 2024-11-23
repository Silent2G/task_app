import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:task_app/common/data/dto/response/error_response/error_response.dart';
import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';
import 'package:task_app/common/data/dto/response/error_response/network_error_response.dart';
import 'package:task_app/common/data/dto/response/error_response/server_error_response.dart';
import 'package:task_app/common/data/dto/response/error_response/uncaught_error_response.dart';
import 'package:task_app/common/data/util/remote_connection_checker_x.dart';

@Injectable()
class ProviderErrorMapper {
  const ProviderErrorMapper();

  IErrorResponse parseDioErrorToErrorResponse(DioException error) {
    if (error.response?.statusCode != null) {
      if (error.response!.statusCode! >= 500) {
        return ServerErrorResponse(status: error.response!.statusCode!);
      } else {
        try {
          return ErrorResponse.fromJson(
              error.response?.data as Map<String, Object?>);
        } catch (_) {
          /// Nothing to handle, last return will works
        }
      }
    }
    return _mapNotResponseErrors(error);
  }

  IErrorResponse _mapNotResponseErrors(DioException currentException) {
    if (currentException.isNetworkConnectionError) {
      return NetworkErrorResponse();
    } else if (currentException.type == DioExceptionType.unknown) {
      return ServerErrorResponse(status: 500);
    } else {
      return UncaughtErrorResponse(
        status: currentException.response?.statusCode ?? 500,
        code: currentException.message ?? '',
      );
    }
  }
}
