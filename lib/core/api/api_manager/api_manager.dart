import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../utils/constants.dart';

@lazySingleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(String endPoint,
      {Map<String, dynamic>? param, Map<String, dynamic>? header}) {
    return dio.get(Constants.baseURL + endPoint,
        queryParameters: param, options: Options(headers: header));
  }

  Future<Response> postData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? header}) {
    return dio.post(Constants.baseURL + endPoint,
        options: Options(headers: header), data: body);
  }
}
