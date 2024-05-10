import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api {
  final _dio = Dio();

  Future<dynamic> get({required String url, @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'token': 'Bearer $token'});
    }
    try {
      Response response = await _dio.get(
        url,
        options: Options(headers: headers),
      );
      if (response.statusCode == 200 | 201) {
        return response.data;
      }
    } catch (error) {
      return {'success': false, 'message': 'Error: $error'};
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'token': 'Bearer $token'});
    }
    try {
      Response response = await _dio.post(
        url,
        data: body,
        options: Options(headers: headers),
      );
      if (response.statusCode == 200 | 201) {
        return {'success': true, 'data': response.data};
      } else {
        return {'success': false, 'message': 'Registration failed'};
      }
    } catch (error) {
      return {'success': false, 'message': 'Error: $error'};
    }
  }
}
