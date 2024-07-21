import 'package:breed_api/breed_api.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pragma_breed_api/src/shared/common_widgets/common_widgets.dart';
import 'package:pragma_breed_api/src/shared/extensions/extensions.dart';

class BreedDetailScreen extends StatelessWidget {
  const BreedDetailScreen({
    super.key,
    required this.breed,
  });

  final Breed breed;

  static Route<void> route(Breed breed) {
    return MaterialPageRoute<void>(
      builder: (context) => BreedDetailScreen(breed: breed),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(breed.name!),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeaderWidget(
            child: BreedImageWidget(
              imageUrl: breed.image!.url,
              height: 400.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(breed.description!),
                20.height,
                Text("Nombre País: ${breed.origin ?? '-'}"),
                6.height,
                Text("Inteligencia: ${breed.intelligence ?? '-'}"),
                6.height,
                Text("Temperamento: ${breed.temperament ?? '-'}"),
                6.height,
                Text("Esperanza de vida: ${breed.lifeSpan ?? '-'}"),
                6.height,
                Text("nombres alternativos: ${breed.altNames ?? '-'}"),
                6.height,
                Text("adaptabilidad: ${breed.adaptability ?? '-'}"),
                6.height,
                Text("nivel de afecto: ${breed.affectionLevel ?? '-'}"),
                6.height,
                Text("amigable con los niños: ${breed.childFriendly ?? '-'}"),
                6.height,
                Text("amigable con los perros: ${breed.dogFriendly ?? '-'}"),
                6.height,
                Text("nivel de energía: ${breed.energyLevel ?? '-'}"),
                6.height,
                Text("cuidado: ${breed.grooming ?? '-'}"),
                6.height,
                Text("problemas de salud: ${breed.healthIssues ?? '-'}"),
                6.height,
                Text("nivel de muda: ${breed.sheddingLevel ?? '-'}"),
                6.height,
                Text("necesidades sociales: ${breed.socialNeeds ?? '-'}"),
                6.height,
                Text("amigable con los extraños: ${breed.strangerFriendly ?? '-'}"),
                6.height,
                Text("vocalización: ${breed.vocalisation ?? '-'}"),
                6.height,
                Text("sin pelo: ${breed.hairless ?? '-'}"),
                6.height,
                Text("natural: ${breed.natural ?? '-'}"),
                6.height,
                Text("raro: ${breed.rare ?? '-'}"),
                6.height,
                Text("cola suprimida: ${breed.suppressedTail ?? '-'}"),
                6.height,
                Text("piernas cortas: ${breed.shortLegs ?? '-'}"),
                6.height,
              ],
            ),
          )
        ],
      ).safeArea(),
    );
  }
}
