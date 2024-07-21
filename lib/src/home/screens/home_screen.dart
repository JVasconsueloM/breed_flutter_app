import 'package:breed_api/breed_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_breed_api/src/home/cubits/cubits.dart';
import 'package:pragma_breed_api/src/home/widgets/widgets.dart';
import 'package:pragma_breed_api/src/shared/common_widgets/common_widgets.dart';
import 'package:pragma_breed_api/src/shared/extensions/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static BlocProvider<HomeCubit> route() {
    return BlocProvider(
      create: (context) => HomeCubit(
        repository: context.read<BreedApiClient>(),
      )..fetchBreed(),
      child: const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catbreeds"),
      ),
      body: Column(
        children: [
          SearcherWidget(
            onQueryChanged: (value) {
              context.read<HomeCubit>().fetchBreed(querySearch: value);
            },
          ),
          const BreedListWidget(),
        ],
      ).safeArea(),
    );
  }
}
