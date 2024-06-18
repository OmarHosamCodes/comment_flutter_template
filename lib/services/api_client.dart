import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

///Just An Api Client That Handel Get and Post requests :)
class ApiClient {
  final Dio _dio;
  ApiClient({required Dio dio}) : _dio = dio {
    //TODO: Update the base url and headrs based on api
    _dio
      ..options.baseUrl = 'https://api.example.com/'
      ..options.connectTimeout = const Duration(seconds: 10)
      ..options.receiveTimeout = const Duration(seconds: 10)
      ..options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      }
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ));
  }

  ///Just pass the endpoint and wait for the respones if there an error it will be handled automaticly :)
  Future<Response> getRequest(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response;
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  ///Just pass the endpoint and wait for the respones if there an error it will be handled automaticly :)
  Future<Response> postRequest(
      String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// handel errors by printing the error message in the debug mode :)
  void _handleError(DioException error) {
    //TODO : Add more things based on project needs
    if (error.response != null) {
      // Handle server errors
      debugPrint(
          'Error: ${error.response?.statusCode} - ${error.response?.data}');
    } else {
      // Handle other errors (e.g., network errors)
      debugPrint('Error: ${error.message}');
    }
  }
}
