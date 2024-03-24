import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:image_processing/config/app_url.dart';

abstract class ServiceBase<T> {
  String? baseUrl = AppUrl.getBaseUrl();
  Future<T> call();
  Uri url(String url) => Uri.http(baseUrl!, url);
  Uri _getV1Url(String url) => Uri.parse('$baseUrl/$url');

  Future<Map<String, dynamic>> get(String apiUrl, String? token) async {
    return _handleResponse(await MyRequest(token).get(_getV1Url(apiUrl)));
  }

  Future<Map<String, dynamic>> post(
    String apirUrl, {
    Map<String, dynamic>? body,
    String? token,
    Map<String, String>? contentType,
  }) async {
    var response = await MyRequest(token).post(
      _getV1Url(apirUrl),
      headers: contentType,
      body: jsonEncode(body),
    );

    return _handleResponse(response);
  }

  Future<Map<String, dynamic>> postImage(
    String apirUrl, {
    File? file,
    String? token,
  }) async {
    var request = http.MultipartRequest(
      'POST',
      _getV1Url(apirUrl),
    );

    print(baseUrl);

    Map<String, String> headers = {"Content-type": "multipart/form-data"};
    request.files.add(await http.MultipartFile.fromPath(
      'image',
      file!.path,
    ));
    request.headers.addAll(headers);

    var res = await request.send();
    var responseBody = StringBuffer();
    await res.stream.transform(utf8.decoder).forEach(responseBody.write);

    return jsonDecode(responseBody.toString());
  }

  Future<Map<String, dynamic>> put(
    String apirUrl, {
    Map<String, dynamic>? body,
    String? token,
  }) async {
    final response = await MyRequest(token).put(
      _getV1Url(apirUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    return _handleResponse(response);
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    return jsonDecode(response.body);
  }
}

class MyRequest extends http.BaseClient {
  final String? token;

  MyRequest(this.token);
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (token != null) {
      request.headers['Authorization'] = 'Bearer $token';
    }
    return request.send();
  }
}
