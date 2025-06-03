import 'dart:io';

abstract class BasicApiClient {
  Future<dynamic> get(Uri url);
  void dispose();
}