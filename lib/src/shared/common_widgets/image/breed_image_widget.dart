import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class BreedImageWidget extends StatelessWidget {
  const BreedImageWidget({
    super.key,
    required this.imageUrl,
    this.height = 200.0,
  });

  final String imageUrl;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      width: double.infinity,
      fit: BoxFit.cover,
      loadingBuilder: (_, Widget child, ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }

        return CircularProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
              : null,
        ).center();
      },
      errorBuilder: (context, error, stackTrace) {
        return const Text('Failed to load image').center();
      },
    ).withHeight(height);
  }
}
