// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_exceptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiServerError _$ApiServerErrorFromJson(Map<String, dynamic> json) =>
    ApiServerError(
      json['message'] as String,
      json['statusCode'] as String,
      json['error'] as String,
    );

Map<String, dynamic> _$ApiServerErrorToJson(ApiServerError instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };

ApiClientError _$ApiClientErrorFromJson(Map<String, dynamic> json) =>
    ApiClientError(
      json['statusCode'] as String,
      (json['message'] as List<dynamic>).map((e) => e as String).toList(),
      json['error'] as String,
    );

Map<String, dynamic> _$ApiClientErrorToJson(ApiClientError instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
