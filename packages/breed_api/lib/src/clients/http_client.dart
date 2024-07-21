import 'package:http/http.dart';

enum HttpMethod { get }

class HttpClient {
  HttpClient({
    required String baseUrl,
    required String apiVersion,
    required String apiKey,
    Client? client,
  })  : _baseUrl = baseUrl,
        _apiVersion = apiVersion,
        _apiKey = apiKey,
        _client = client ?? Client();

  final String _baseUrl;
  final String _apiVersion;
  final String _apiKey;
  final Client _client;

  Future<Response> executeRequest({
    required HttpMethod method,
    required String unencodedPath,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    String? body,
  }) {
    final uri = Uri.https(
      _baseUrl,
      "$_apiVersion/$unencodedPath",
      queryParameters,
    );
    final requestHeaders = headers ?? {};
    requestHeaders['Content-Type'] = 'application/json';
    requestHeaders['x-api-key'] = _apiKey;

    switch (method) {
      case HttpMethod.get:
        return _client.get(
          uri,
          headers: requestHeaders,
        );
    }
  }
}
