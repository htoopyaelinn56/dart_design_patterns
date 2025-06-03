import 'dart:convert';
import 'dart:io';

import 'basic_api_client.dart';

class HttpBasicApiClient implements BasicApiClient {

  final httpApiClient = HttpClient();

  @override
  Future<dynamic> get(Uri url) async {
    final request = await httpApiClient.getUrl(url);
    final response = await request.close();
    if (response.statusCode == HttpStatus.ok) {
      final responseBody = await response.transform(utf8.decoder).join();
      return responseBody;
    } else {
      return null;
    }
  }

  @override
  void dispose(){
    httpApiClient.close();
  }
}