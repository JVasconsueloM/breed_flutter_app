import 'package:breed_api/breed_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_breed_api/src/home/home.dart';
import 'package:pragma_breed_api/theme/theme.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.breedApiClient,
  });

  final BreedApiClient breedApiClient;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<BreedApiClient>(
          create: (context) => breedApiClient,
        ),
      ],
      child: MaterialApp(
        title: 'Catbreeds Pragma',
        theme: theme,
        home: HomeScreen.route(),
      ),
    );
  }
}
