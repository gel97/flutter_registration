import 'package:dio/dio.dart';

import '../model/dto_credentials.dart';

class ApiLogin {
  final Dio _dio = Dio(BaseOptions(
      baseUrl: "http://172.16.26.60/flutter-training/",
      connectTimeout: 1000 * 100));
  Future<Response> login(DtoCredentials dto) async {
    final String path = "api/Account/Login";

    try {
      final response = await _dio.post(path, data: dto);
      print(response.data.toString());
      return response;
    } catch (e) {
      throw e;
    }
  }
}
