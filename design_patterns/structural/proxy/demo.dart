import 'http_basic_api_client.dart';
import 'logger_http_client.dart';

void main() async {
  final httpBasicApiClient = HttpBasicApiClient();
  final loggerHttpClient = LoggerHttpClient(httpClient: httpBasicApiClient);
  await loggerHttpClient.get(Uri.parse('https://www.google.com'));

  loggerHttpClient.dispose();
}
