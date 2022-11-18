import 'package:dio/dio.dart';

import '../model/dto_credentials.dart';

class ApiRegistration {
  final Dio _dio = Dio(BaseOptions(
      baseUrl: "http://172.16.26.60/flutter-training/",
      connectTimeout: 1000 * 100));
  Future<String> register(DtoCredentials dto) async {
    final String path = "api/PersonalInfo/PostUser";

    try {
      final resp = await _dio.post(path, data: dto);
      return resp.data.toString();
    } catch (e) {
      return e.toString();
    }
  }
}
