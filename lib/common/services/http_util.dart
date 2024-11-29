import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class HttpUtil {
  late Dio dio;
  String baseUrl; // Make baseUrl a parameter

  ///Private constructor to make the class private
  ///Therefore means no one can create an instance of this class
  static final Map<String, HttpUtil> _instances = {};

  factory HttpUtil({String baseUrl = ''}) {
    // Use baseUrl as a key for singleton instances
    if (!_instances.containsKey(baseUrl)) {
      _instances[baseUrl] = HttpUtil._internal(baseUrl);
    }
    return _instances[baseUrl]!;
  }

  HttpUtil._internal(this.baseUrl) {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl, // Use the passed baseUrl
      connectTimeout: const Duration(minutes: 10),
      receiveTimeout: const Duration(minutes: 10),
      headers: {},
      contentType: "application/json; charset=utf-8",
      responseType: ResponseType.json,
    );
    dio = Dio(options);

    dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler){
          if (kDebugMode) {
            print('app request data ${options.data}');
          }
          return handler.next(options);
        },
        onResponse: (response, handler){
          if (kDebugMode) {
            print('app response data ${response.data}');
          }
          return handler.next(response);
        },
        onError: (DioException e, handler){
          if (kDebugMode) {
            print('app error data $e');
          }
          ErrorEntity eInfo = createErrorEntity(e);
          onError(eInfo);
        }
    ));
  }

  Future get(
      String path, {
        Map<String, dynamic>? queryParameters,
        Options? options,
      }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    var response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: requestOptions
    );
    return response.data;
  }

  Future post(
      String path, {
        Object? data,
        Map<String, dynamic>? queryParameters,
        Options? options,
      }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    var response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions
    );
    return response.data;
  }

  Future put(
      String path, {
        Object? data,
        Map<String, dynamic>? queryParameters,
        Options? options,
      }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    var response = await dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions
    );
    return response.data;
  }

  Future delete(
      String path, {
        Object? data,
        Map<String, dynamic>? queryParameters,
        Options? options,
      }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    var response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions
    );
    return response.data;
  }
}

class ErrorEntity implements Exception {
  int code = -1;
  String message = "";
  ErrorEntity({required this.code, required this.message});

  @override
  String toString() {
    if (message == "") return "Exception";

    return "Exception code $code, $message";
  }
}

ErrorEntity createErrorEntity(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return ErrorEntity(code: -1, message: "Connection timed out");

    case DioExceptionType.sendTimeout:
      return ErrorEntity(code: -1, message: "Send timed out");

    case DioExceptionType.receiveTimeout:
      return ErrorEntity(code: -1, message: "Receive timed out");

    case DioExceptionType.badCertificate:
      return ErrorEntity(code: -1, message: "Bad SSL Certificate");

    case DioExceptionType.badResponse:
      switch (error.response!.statusCode) {
        case 400:
          return ErrorEntity(code: 400, message: "Request syntax error");
        case 401:
          return ErrorEntity(code: 401, message: "Permission denied");
        case 403:
          return ErrorEntity(code: 403, message: "Forbidden");
        case 404:
          return ErrorEntity(code: 404, message: "Not found");
        case 500:
          return ErrorEntity(code: 500, message: "Internal server error");
        case 502:
          return ErrorEntity(code: 502, message: "Bad gateway");
        case 503:
          return ErrorEntity(code: 503, message: "Service unavailable");
        case 504:
          return ErrorEntity(code: 504, message: "Gateway timeout");
      }
      return ErrorEntity(code: -1, message: "Server bad response");

    case DioExceptionType.cancel:
      return ErrorEntity(code: -1, message: "Server canceled it");

    case DioExceptionType.connectionError:
      return ErrorEntity(code: -1, message: "Connection error");

    case DioExceptionType.unknown:
      return ErrorEntity(code: -1, message: "Unknown error");
  }
}

void onError(ErrorEntity eInfo) {
  print('error.code -> ${eInfo.code} error.message -> ${eInfo.message}');
  switch (eInfo.code) {
    case 400:
      if (kDebugMode) {
        print('Server syntax error');
      }
      break;
    case 401:
      if (kDebugMode) {
        print('You are denied to continue');
      }
      break;
    case 403:
      if (kDebugMode) {
        print('Forbidden access');
      }
      break;
    case 404:
      if (kDebugMode) {
        print('Not found');
      }
      break;
    case 500:
      if (kDebugMode) {
        print('Internal server error');
      }
      break;
    case 502:
      if (kDebugMode) {
        print('Bad gateway');
      }
      break;
    case 503:
      if (kDebugMode) {
        print('Service unavailable');
      }
      break;
    case 504:
      if (kDebugMode) {
        print('Gateway timeout');
      }
      break;
    default:
      if (kDebugMode) {
        print('Unknown error');
      }
      break;
  }
}