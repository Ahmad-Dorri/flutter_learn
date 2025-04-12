import 'dart:async';
import 'dart:convert';

import 'package:dio/src/cancel_token.dart';
import 'package:langeek_flutter/data/services/api_result.dart';
import 'package:langeek_flutter/data/services/dio_client.dart';
import 'package:langeek_flutter/data/services/network_exceptions.dart';

class BaseApiRepository {
  final DioClient dioClient;

  BaseApiRepository({required this.dioClient});

  Future<ApiResult<T>> requestServer<T>(
    String path,
    T Function(dynamic dataFromServer)? transformMethod, {
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  }) async {
    try {
      var result = await dioClient.get(path,
          cancelToken: cancelToken, queryParameters: queryParameters);
      return ApiResult.success(
          data: transformMethod != null
              ? transformMethod(result is String ? json.decode(result) : result)
              : result);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<T>> postRequest<T>(
      {required String path,
      required dynamic request,
      required T Function(dynamic dataFromServer) transformMethod,
      Map<String, dynamic>? queryParameters}) async {
    try {
      var result = await dioClient.post(path,
          data: request, queryParameters: queryParameters);
      return ApiResult.success(data: transformMethod(result));
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<T>> removeRequest<T>(
      {required String path,
      required T Function(dynamic dataFromServer) transformMethod}) async {
    try {
      var result = await dioClient.remove(path);
      return ApiResult.success(data: transformMethod(result));
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<T>> putRequest<T>(
      {required String path,
      Map<String, dynamic>? request,
      required T Function(
        dynamic dataFromServer,
      ) transformMethod,
      Map<String, dynamic>? queryParameters}) async {
    try {
      var result = await dioClient.put(path,
          data: request, queryParameters: queryParameters);
      return ApiResult.success(data: transformMethod(result));
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<T>> deleteRequest<T>(
      String path, T Function(dynamic dataFromServer)? transformMethod) async {
    try {
      var result = await dioClient.delete(path);
      return ApiResult.success(
          data: transformMethod != null
              ? transformMethod(result is String ? json.decode(result) : result)
              : result);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
