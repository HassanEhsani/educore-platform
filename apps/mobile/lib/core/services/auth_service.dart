import 'package:dio/dio.dart';

class ApiService {
  ApiService._();

  static final ApiService instance = ApiService._();

  final Dio _dio = Dio();

  Dio get client => _dio;

  Future<Response> get(String path, {Map<String, dynamic>? query}) async {
    return _dio.get(path, queryParameters: query);
  }

  Future<Response> post(String path, {dynamic data}) async {
    return _dio.post(path, data: data);
  }
}
