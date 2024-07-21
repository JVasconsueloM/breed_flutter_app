import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed_model.freezed.dart';
part 'breed_model.g.dart';

@freezed
class Breed with _$Breed {
  const factory Breed({
    String? id,
    String? name,
    int? intelligence,
    String? origin,
    String? description,
    String? temperament,
    @JsonKey(name: 'life_span') String? lifeSpan,
    int? indoor,
    int? lap,
    @JsonKey(name: 'alt_names') String? altNames,
    @JsonKey(name: 'adaptability') int? adaptability,
    @JsonKey(name: 'affection_level') int? affectionLevel,
    @JsonKey(name: 'child_friendly') int? childFriendly,
    @JsonKey(name: 'dog_friendly') int? dogFriendly,
    @JsonKey(name: 'energy_level') int? energyLevel,
    int? grooming,
    @JsonKey(name: 'health_issues') int? healthIssues,
    @JsonKey(name: 'shedding_level') int? sheddingLevel,
    @JsonKey(name: 'social_needs') int? socialNeeds,
    @JsonKey(name: 'stranger_friendly') int? strangerFriendly,
    @JsonKey(name: 'vocalisation') int? vocalisation,
    int? hairless,
    int? natural,
    int? rare,
    int? rex,
    @JsonKey(name: 'suppressed_tail') int? suppressedTail,
    @JsonKey(name: 'short_legs') int? shortLegs,
    @JsonKey(name: 'wikipedia_url') String? wikipediaUrl,
    @JsonKey(name: 'hypoallergenic') int? hypoallergenic,
    @JsonKey(name: 'reference_image_id') String? referenceImageId,
    ImageData? image,
  }) = _Breed;

  factory Breed.fromJson(Map<String, Object?> json) => _$BreedFromJson(json);
}

@freezed
class ImageData with _$ImageData {
  const factory ImageData({
    required String id,
    required String url,
    required List<Breed> breeds,
    required int width,
    required int height,
  }) = ImageDataClass;

  factory ImageData.fromJson(Map<String, dynamic> json) => _$ImageDataFromJson(json);
}
