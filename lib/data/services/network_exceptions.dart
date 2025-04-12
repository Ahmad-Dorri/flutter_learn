import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(String? msg) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest(String? msg) = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError(String? msg) =
      InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions handleResponse(int statusCode, String? msg) {
    switch (statusCode) {
      case 400:
        return NetworkExceptions.badRequest(msg);
      case 401:
      case 403:
        return NetworkExceptions.unauthorizedRequest(msg);
      case 404:
        return NetworkExceptions.notFound("Not found");
      case 409:
        return NetworkExceptions.conflict();
      case 408:
        return NetworkExceptions.requestTimeout();
      case 500:
        return NetworkExceptions.internalServerError(msg);
      case 503:
        return NetworkExceptions.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return NetworkExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.unknown:
              networkExceptions = NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = NetworkExceptions.sendTimeout();
              break;

            case DioExceptionType.badResponse:
              networkExceptions = NetworkExceptions.handleResponse(
                  error.response!.statusCode!, error.response!.toString());
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = NetworkExceptions.sendTimeout();
              break;
            default:
              networkExceptions = NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (e) {
        // Helper.printError(e.toString());
        return NetworkExceptions.formatException();
      } catch (_) {
        return NetworkExceptions.unexpectedError();
      }
    } else {
      print("error json " + error.toString());
      if (error.toString().contains("is not a subtype of")) {
        debugPrint("unableToProcess msg: ${error.toString()}");
        return NetworkExceptions.unableToProcess();
      }

      return NetworkExceptions.unexpectedError();
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    return networkExceptions.maybeWhen(
        orElse: () => "",
        notImplemented: () => "Not Implemented",
        requestCancelled: () => "Request Cancelled",
        internalServerError: (String? msg) => "Internal Server Error: $msg",
        notFound: (String reason) => reason,
        serviceUnavailable: () => "Service unavailable",
        methodNotAllowed: () => "error_loading_imageerror_loading_image",
        badRequest: (String? msg) => msg ?? "Bad request",
        unauthorizedRequest: (String? msg) => msg ?? "Unauthorized request",
        unexpectedError: () => "Unexpected error occurred",
        requestTimeout: () => "Connection request timeout",
        noInternetConnection: () => "No internet connection",
        conflict: () => "Error due to a conflict",
        sendTimeout: () => "Send timeout in connection with API server",
        unableToProcess: () => "Unable to process the data",
        defaultError: (String error) => error,
        formatException: () => "Unexpected error occurred",
        notAcceptable: () => "Not acceptable");
  }
}
