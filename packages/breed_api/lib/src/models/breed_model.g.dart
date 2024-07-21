// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreedImpl _$$BreedImplFromJson(Map<String, dynamic> json) => _$BreedImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      intelligence: (json['intelligence'] as num?)?.toInt(),
      origin: json['origin'] as String?,
      description: json['description'] as String?,
      temperament: json['temperament'] as String?,
      lifeSpan: json['life_span'] as String?,
      indoor: (json['indoor'] as num?)?.toInt(),
      lap: (json['lap'] as num?)?.toInt(),
      altNames: json['alt_names'] as String?,
      adaptability: (json['adaptability'] as num?)?.toInt(),
      affectionLevel: (json['affection_level'] as num?)?.toInt(),
      childFriendly: (json['child_friendly'] as num?)?.toInt(),
      dogFriendly: (json['dog_friendly'] as num?)?.toInt(),
      energyLevel: (json['energy_level'] as num?)?.toInt(),
      grooming: (json['grooming'] as num?)?.toInt(),
      healthIssues: (json['health_issues'] as num?)?.toInt(),
      sheddingLevel: (json['shedding_level'] as num?)?.toInt(),
      socialNeeds: (json['social_needs'] as num?)?.toInt(),
      strangerFriendly: (json['stranger_friendly'] as num?)?.toInt(),
      vocalisation: (json['vocalisation'] as num?)?.toInt(),
      hairless: (json['hairless'] as num?)?.toInt(),
      natural: (json['natural'] as num?)?.toInt(),
      rare: (json['rare'] as num?)?.toInt(),
      rex: (json['rex'] as num?)?.toInt(),
      suppressedTail: (json['suppressed_tail'] as num?)?.toInt(),
      shortLegs: (json['short_legs'] as num?)?.toInt(),
      wikipediaUrl: json['wikipedia_url'] as String?,
      hypoallergenic: (json['hypoallergenic'] as num?)?.toInt(),
      referenceImageId: json['reference_image_id'] as String?,
      image: json['image'] == null
          ? null
          : ImageData.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BreedImplToJson(_$BreedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'intelligence': instance.intelligence,
      'origin': instance.origin,
      'description': instance.description,
      'temperament': instance.temperament,
      'life_span': instance.lifeSpan,
      'indoor': instance.indoor,
      'lap': instance.lap,
      'alt_names': instance.altNames,
      'adaptability': instance.adaptability,
      'affection_level': instance.affectionLevel,
      'child_friendly': instance.childFriendly,
      'dog_friendly': instance.dogFriendly,
      'energy_level': instance.energyLevel,
      'grooming': instance.grooming,
      'health_issues': instance.healthIssues,
      'shedding_level': instance.sheddingLevel,
      'social_needs': instance.socialNeeds,
      'stranger_friendly': instance.strangerFriendly,
      'vocalisation': instance.vocalisation,
      'hairless': instance.hairless,
      'natural': instance.natural,
      'rare': instance.rare,
      'rex': instance.rex,
      'suppressed_tail': instance.suppressedTail,
      'short_legs': instance.shortLegs,
      'wikipedia_url': instance.wikipediaUrl,
      'hypoallergenic': instance.hypoallergenic,
      'reference_image_id': instance.referenceImageId,
      'image': instance.image,
    };

_$ImageDataClassImpl _$$ImageDataClassImplFromJson(Map<String, dynamic> json) =>
    _$ImageDataClassImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      breeds: (json['breeds'] as List<dynamic>)
          .map((e) => Breed.fromJson(e as Map<String, dynamic>))
          .toList(),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$$ImageDataClassImplToJson(
        _$ImageDataClassImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'breeds': instance.breeds,
      'width': instance.width,
      'height': instance.height,
    };
