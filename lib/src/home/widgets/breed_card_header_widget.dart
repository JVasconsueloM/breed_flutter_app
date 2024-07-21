import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class BreedCardHeaderWidget extends StatelessWidget {
  const BreedCardHeaderWidget({
    super.key,
    required this.breedName,
  });

  final String breedName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          breedName,
          style: context.textTheme.titleLarge,
        ),
        TextButton(
          onPressed: () {},
          child: const Icon(Icons.more_horiz),
        ),
      ],
    ).paddingOnly(
      top: 8.0,
      bottom: 8.0,
      left: 8.0,
    );
  }
}
