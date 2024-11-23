import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';

class ServerErrorResponse extends IErrorResponse {
  ServerErrorResponse({
    required super.status,
  }) : super(
            code:
                'Some problem with server connection.\nPlease try again later.');
}
