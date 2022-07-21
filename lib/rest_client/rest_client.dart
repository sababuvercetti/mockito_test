import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

class RestClient {
  Dio dio = Dio();
  RestClient({BaseOptions? options}) {
    create(options);
  }

  void create([BaseOptions? options]) {
    dio = Dio(options);
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
      ));
    }
  }
}
