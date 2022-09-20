import 'dart:convert';

import 'package:dio/dio.dart';

abstract class BaseNetworkServices {
  Future<dynamic> getGETApiResponse(String url, String token);
  Future<dynamic> getPOSTApiResponse(String url, Map<String, dynamic> body);
}

class NetworkServices extends BaseNetworkServices {
  @override
  Future<dynamic> getGETApiResponse(String url, String token) async {
    try {
      var response = await Dio().get(
        url,
        options: Options(headers: {
          "Authorization": "Bearer $token",
        }),
      );
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.data);
        return responseData;
      } else {
        print("Request failed with status: ${response.statusCode}");
        throw Exception('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print("Server Error: $e");
      throw Exception(
        'Something wrong happened while requesting HTTP service $e',
      );
    }
  }

  @override
  Future getPOSTApiResponse(String url, Map<String, dynamic> body,
      [String? token]) async {
    try {
      var response = await Dio().post(
        url,
        data: jsonEncode(body),
        options: Options(headers: {
          "Authorization": "Bearer $token",
          "Content-Type": "application/json",
        }),
      );
      if (response.statusCode == 200) {
        var responseBody = response.data;
        return responseBody;
      } else {
        print("Request failed with status: ${response.statusCode}");
        throw Exception('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      throw Exception(
        'Something wrong happened while requesting http service $e',
      );
    }
  }
}
