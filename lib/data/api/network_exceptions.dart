// ignore_for_file: prefer_constructors_over_static_methods

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';
part 'network_exceptions.g.dart';

@freezed
class NetworkException with _$NetworkException implements Exception {
  const factory NetworkException.noInternetConnectionException({
    @Default('It seems to be an issue with your internet connection.')
        String message,
  }) = _NoInternetConnectionException;
  const factory NetworkException.requestCanceledException({
    @Default('Request cancelled.') String message,
  }) = _RequestCanceledException;
  const factory NetworkException.requestTimeoutException({
    @Default('Request timeout.') String message,
  }) = _RequestTimeoutException;
  const factory NetworkException.recieveTimeoutException({
    @Default('Recieve cancelled.') String message,
  }) = _RecieveTimeoutException;
  const factory NetworkException.unexpectedException({
    @Default('Unexpected error has occured.') String message,
  }) = _UnexpectedException;
  const factory NetworkException.unAuthorizedException({
    required String message,
  }) = _UnAuthorizedException;
  const factory NetworkException.badRequestException({
    required List<String> messages,
  }) = _BadRequestException;
  const factory NetworkException.forbiddenException({
    required String message,
  }) = _ForbiddenException;
  const factory NetworkException.notFoundException({
    required String message,
  }) = _NotFoundException;
  const factory NetworkException.conflictException({
    required String message,
  }) = _ConflictException;
  const factory NetworkException.internalServerException({
    required String message,
  }) = _InternalServerException;
  const factory NetworkException.serviceUnavailableException({
    required String message,
  }) = _ServiceUnavailableException;
  const factory NetworkException.methodNotAllowedException({
    required String message,
  }) = _MethodNotAllowedException;
  const factory NetworkException.notAcceptableException({
    required String message,
  }) = _NotAcceptableException;
  const factory NetworkException.formatException({
    @Default('Unable to parse or process given data.') String message,
  }) = _FormatException;

  static NetworkException fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        return const NetworkException.requestCanceledException();
      case DioErrorType.connectTimeout:
        return const NetworkException.requestTimeoutException();
      case DioErrorType.receiveTimeout:
        return const NetworkException.recieveTimeoutException();
      case DioErrorType.sendTimeout:
        return const NetworkException.requestTimeoutException();
      case DioErrorType.other:
        final error = dioError.error;
        final isSocketException = error != null && error is SocketException;
        return isSocketException
            ? const NetworkException.noInternetConnectionException()
            : NetworkException.unexpectedException(message: dioError.message);
      case DioErrorType.response:
        try {
          final statusCode = dioError.response?.statusCode;
          final data = dioError.response?.data;

          if (statusCode == 400) {
            final clientError = ApiClientError.fromJson(data);

            return _handleResponseErrors(
              statusCode,
              '',
              clientError.message,
            );
          }
          final serverError = ApiServerError.fromJson(data);
          return _handleResponseErrors(statusCode, serverError.message);
        } catch (e) {
          return const NetworkException.unexpectedException();
        }
    }
  }

  static NetworkException _handleResponseErrors(
    int? statusCode,
    String errorMessage, [
    List<String> errors = const [],
  ]) {
    switch (statusCode) {
      case 400:
        return NetworkException.badRequestException(messages: errors);
      case 401:
        return NetworkException.unAuthorizedException(message: errorMessage);
      case 403:
        return NetworkException.forbiddenException(message: errorMessage);
      case 404:
        return NetworkException.notFoundException(message: errorMessage);
      case 405:
        return NetworkException.methodNotAllowedException(
          message: errorMessage,
        );
      case 406:
        return NetworkException.notAcceptableException(message: errorMessage);
      case 409:
        return NetworkException.conflictException(message: errorMessage);
      case 408:
        return NetworkException.requestTimeoutException(message: errorMessage);
      case 500:
        return NetworkException.internalServerException(message: errorMessage);
      case 503:
        return NetworkException.serviceUnavailableException(
          message: errorMessage,
        );
      default:
        return const NetworkException.unexpectedException();
    }
  }
}

@JsonSerializable()
class ApiServerError {
  final String statusCode;
  final String message;
  final String error;

  ApiServerError(this.message, this.statusCode, this.error);

  factory ApiServerError.fromJson(Map<String, dynamic> json) =>
      _$ApiServerErrorFromJson(json);
  Map<String, dynamic> toJson() => _$ApiServerErrorToJson(this);
}

@JsonSerializable()
class ApiClientError {
  final String statusCode;
  final List<String> message;
  final String error;

  ApiClientError(this.statusCode, this.message, this.error);

  factory ApiClientError.fromJson(Map<String, dynamic> json) =>
      _$ApiClientErrorFromJson(json);
  Map<String, dynamic> toJson() => _$ApiClientErrorToJson(this);
}
