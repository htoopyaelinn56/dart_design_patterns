import 'basic_api_client.dart';

class LoggerHttpClient implements BasicApiClient {
  final BasicApiClient httpClient;

  LoggerHttpClient({required this.httpClient});

  @override
  Future<dynamic> get(Uri url) async {
    print('fetching = $url');
    final response = await httpClient.get(url);
    print('response = $response');
    return response;
  }

  @override
  void dispose() {
    httpClient.dispose();
    print('disposed httpClient');
  }
}
