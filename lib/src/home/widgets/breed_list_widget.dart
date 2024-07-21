import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pragma_breed_api/src/home/cubits/cubits.dart';
import 'package:pragma_breed_api/src/home/widgets/breed_card_widget.dart';

class BreedListWidget extends StatelessWidget {
  const BreedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        switch (state.status) {
          case HomeStatus.initial:
            return const SizedBox.shrink();
          case HomeStatus.loading:
            return Center(
              child: Loader(),
            );
          case HomeStatus.success:
            final breeds = state.breeds;
            return Expanded(
              child: ListView.separated(
                separatorBuilder: (_, __) => 8.height,
                itemCount: breeds.length,
                itemBuilder: (_, int index) {
                  return BreedCardWidget(
                    breed: breeds[index],
                  );
                },
              ),
            );
          case HomeStatus.failure:
            return const Center(
              child: Text("Something happens"),
            );
        }
      },
    );
  }
}
