// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_model_clean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailsModelImpl _$$PokemonDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonDetailsModelImpl(
      baseExperience: json['baseExperience'] as int?,
      height: json['height'] as int?,
      id: json['id'] as int?,
      isDefault: json['isDefault'] as bool?,
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => Moves.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      order: json['order'] as int?,
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => Stats.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$$PokemonDetailsModelImplToJson(
        _$PokemonDetailsModelImpl instance) =>
    <String, dynamic>{
      'baseExperience': instance.baseExperience,
      'height': instance.height,
      'id': instance.id,
      'isDefault': instance.isDefault,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

_$TypesImpl _$$TypesImplFromJson(Map<String, dynamic> json) => _$TypesImpl(
      slot: json['slot'] as int?,
      type: json['type'] == null
          ? null
          : Type.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypesImplToJson(_$TypesImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$TypeImpl _$$TypeImplFromJson(Map<String, dynamic> json) => _$TypeImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$TypeImplToJson(_$TypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$StatsImpl _$$StatsImplFromJson(Map<String, dynamic> json) => _$StatsImpl(
      baseStat: json['baseStat'] as int?,
      effort: json['effort'] as int?,
      stat: json['stat'] == null
          ? null
          : Stat.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatsImplToJson(_$StatsImpl instance) =>
    <String, dynamic>{
      'baseStat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$StatImpl _$$StatImplFromJson(Map<String, dynamic> json) => _$StatImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$StatImplToJson(_$StatImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$MovesImpl _$$MovesImplFromJson(Map<String, dynamic> json) => _$MovesImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$MovesImplToJson(_$MovesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$SpritesImpl _$$SpritesImplFromJson(Map<String, dynamic> json) =>
    _$SpritesImpl(
      frontDefault: json['frontDefault'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontFemale: json['frontFemale'] as String?,
      frontShinyFemale: json['frontShinyFemale'] as String?,
      backDefault: json['backDefault'] as String?,
      backShiny: json['backShiny'] as String?,
      backFemale: json['backFemale'] as String?,
      backShinyFemale: json['backShinyFemale'] as String?,
    );

Map<String, dynamic> _$$SpritesImplToJson(_$SpritesImpl instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'frontShiny': instance.frontShiny,
      'frontFemale': instance.frontFemale,
      'frontShinyFemale': instance.frontShinyFemale,
      'backDefault': instance.backDefault,
      'backShiny': instance.backShiny,
      'backFemale': instance.backFemale,
      'backShinyFemale': instance.backShinyFemale,
    };

_$VersionGroupDetailsImpl _$$VersionGroupDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$VersionGroupDetailsImpl(
      levelLearnedAt: json['levelLearnedAt'] as int?,
      moveLearnMethod: json['moveLearnMethod'] == null
          ? null
          : MoveLearnMethod.fromJson(
              json['moveLearnMethod'] as Map<String, dynamic>),
      versionGroup: json['versionGroup'] == null
          ? null
          : VersionGroup.fromJson(json['versionGroup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VersionGroupDetailsImplToJson(
        _$VersionGroupDetailsImpl instance) =>
    <String, dynamic>{
      'levelLearnedAt': instance.levelLearnedAt,
      'moveLearnMethod': instance.moveLearnMethod,
      'versionGroup': instance.versionGroup,
    };

_$VersionGroupImpl _$$VersionGroupImplFromJson(Map<String, dynamic> json) =>
    _$VersionGroupImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$VersionGroupImplToJson(_$VersionGroupImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$MoveLearnMethodImpl _$$MoveLearnMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$MoveLearnMethodImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$MoveLearnMethodImplToJson(
        _$MoveLearnMethodImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$MoveImpl _$$MoveImplFromJson(Map<String, dynamic> json) => _$MoveImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$MoveImplToJson(_$MoveImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
