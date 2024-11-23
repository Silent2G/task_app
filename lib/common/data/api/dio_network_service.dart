import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioNetworkService {
  DioNetworkService._();

  static Dio? _dio;
  static Dio get dio => _dio ??= _init();

  static Dio _init() {
    final Dio dio = Dio();

    // add some dio options

    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
      );
    }
    _dio = dio;

    return dio;
  }
}
