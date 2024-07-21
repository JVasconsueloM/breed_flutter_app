import 'dart:convert';

import 'package:breed_api/src/clients/http_client.dart';
import 'package:breed_api/src/models/models.dart';

class SearchFailure implements Exception {}

class BreedApiClient {
  BreedApiClient({
    required String baseUrl,
    required String apiVersion,
    required String apiKey,
    HttpClient? httpClient,
  }) : _httpClient = httpClient ??
            HttpClient(
              baseUrl: baseUrl,
              apiVersion: apiVersion,
              apiKey: apiKey,
            );

  final HttpClient _httpClient;

  Future<List<Breed>> search({
    String? querySearch,
  }) async {
    String endpointUrl = 'breeds';
    Map<String, String?>? queryParameters = {
      "limit": "10",
      "page": "0",
    };

    if (querySearch != null && querySearch.isNotEmpty) {
      endpointUrl = 'breeds/search';
      queryParameters["q"] = querySearch;
    }

    final response = await _httpClient.executeRequest(
      method: HttpMethod.get,
      unencodedPath: endpointUrl,
      queryParameters: queryParameters,
    );

    if (response.statusCode != 200) {
      throw SearchFailure();
    }

    final responseBody = json.decode(response.body) as List<dynamic>;

    final breeds =
        responseBody.map((json) => Breed.fromJson(json as Map<String, dynamic>)).toList();

    final updatedBreeds = await Future.wait(breeds.map((breed) async {
      try {
        final image = await _fetchBreedImage(breed.referenceImageId!);
        return breed.copyWith(image: image);
      } catch (_) {
        return breed;
      }
    }).toList());

    final filteredBreeds = updatedBreeds.where((breed) => breed.image?.url != null).toList();

    return filteredBreeds;
  }

  Future<ImageData> _fetchBreedImage(String breedId) async {
    String endpointUrl = 'images/$breedId';

    final response = await _httpClient.executeRequest(
      method: HttpMethod.get,
      unencodedPath: endpointUrl,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load breed image');
    }

    final responseBody = json.decode(response.body) as Map<String, dynamic>;

    return ImageData.fromJson(responseBody);
  }
}
