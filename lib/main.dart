import 'package:breed_api/breed_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pragma_breed_api/app.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  final breedApiClient = BreedApiClient(
    baseUrl: dotenv.env['BASE_URL']!,
    apiVersion: dotenv.env['API_VERSION']!,
    apiKey: dotenv.env['API_KEY']!,
  );
  runApp(App(
    breedApiClient: breedApiClient,
  ));
}
