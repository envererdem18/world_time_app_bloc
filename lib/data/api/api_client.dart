import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'endpoints.dart';
import 'network_exceptions.dart';

@singleton
class ApiClient {
  final Dio dio = Dio();
  late Endpoints endPoints;

  ApiClient() {
    dio
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = connectTimeout
      ..options.receiveTimeout = receiveTimeout
      ..options.headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': '*/*',
      }
      ..options.responseType = ResponseType.json;
    endPoints = Endpoints(dio);
  }

  final int receiveTimeout = 15000;
  final int connectTimeout = 15000;

  String get baseUrl => "http://worldtimeapi.org/api";
}

Future<R> handleApiErrors<R>({required Future<R> method}) async {
  return method.catchError((e) {
    if (e is SocketException) {
      throw const NetworkException.noInternetConnectionException();
    } else if (e is FormatException) {
      throw const NetworkException.formatException();
    } else if (e is DioError) {
      throw NetworkException.fromDioError(e);
    } else {
      throw NetworkException.unexpectedException(message: e.toString());
    }
  });
}
