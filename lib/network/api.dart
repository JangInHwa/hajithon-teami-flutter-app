import 'package:dio/dio.dart';

class ApiProvider {
  final baseUrl = 'https://www.google.com';
  final Dio dio = Dio();
  ApiProvider() {
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(LogInterceptor());
  }
}
