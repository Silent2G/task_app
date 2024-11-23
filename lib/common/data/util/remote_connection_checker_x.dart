import 'dart:io';

import 'package:dio/dio.dart';

extension RemoteConnectionCheckerX on DioException {
  bool get isNetworkConnectionError =>
      (type == DioExceptionType.unknown && error is SocketException) ||
      type == DioExceptionType.connectionError ||
      type == DioExceptionType.connectionTimeout;
}