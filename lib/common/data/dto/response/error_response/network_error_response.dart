import 'dart:io';

import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';

class NetworkErrorResponse extends IErrorResponse {
  NetworkErrorResponse()
      : super(
          code:
              'Some problem with network connection.\nPlease try again later.',
          status: HttpStatus.networkConnectTimeoutError,
        );
}
