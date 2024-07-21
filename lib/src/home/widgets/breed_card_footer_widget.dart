import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class BreedCardFooterWidget extends StatelessWidget {
  const BreedCardFooterWidget({
    super.key,
    required this.breedOrigin,
    required this.breedIntelligence,
  });

  final String breedOrigin;
  final int breedIntelligence;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          breedOrigin,
          style: context.textTheme.bodyMedium,
        ),
        Text(
          'Intelligence: $breedIntelligence',
          style: context.textTheme.bodyMedium,
        ),
      ],
    ).paddingAll(8.0);
  }
}
