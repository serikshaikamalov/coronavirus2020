import 'package:coronavirus2020/core/constants/environment.dart';
import 'package:coronavirus2020/core/interceptors/logger.interceptor.dart';
import 'package:dio/dio.dart';

BaseOptions options = BaseOptions(
  baseUrl: environement['apiUrl'],
  receiveTimeout: 300000,
  connectTimeout: 100000,
);

Dio dio = new Dio(options);

void setupInterceptors() {
  // Interceptors
  dio.interceptors.add(LoggerInterceptor());
}
