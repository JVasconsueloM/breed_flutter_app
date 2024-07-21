import 'package:breed_api/breed_api.dart';
import 'package:flutter/material.dart';
import 'package:pragma_breed_api/src/detail/screens/breed_detail_screen.dart';
import 'package:pragma_breed_api/src/home/widgets/breed_card_footer_widget.dart';
import 'package:pragma_breed_api/src/home/widgets/breed_card_header_widget.dart';
import 'package:pragma_breed_api/src/shared/common_widgets/image/breed_image_widget.dart';
import 'package:pragma_breed_api/src/shared/extensions/extensions.dart';

class BreedCardWidget extends StatelessWidget {
  const BreedCardWidget({
    super.key,
    required this.breed,
  });

  final Breed breed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      surfaceTintColor: context.colorScheme.primary,
      child: InkWell(
        onTap: () {
          context.navigator.push(BreedDetailScreen.route(breed));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BreedCardHeaderWidget(breedName: breed.name!),
            BreedImageWidget(imageUrl: breed.image!.url),
            BreedCardFooterWidget(
              breedIntelligence: breed.intelligence!,
              breedOrigin: breed.origin!,
            ),
          ],
        ),
      ),
    );
  }
}
