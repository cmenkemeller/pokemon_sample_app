import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_model_clean.freezed.dart';
part 'pokemon_details_model_clean.g.dart';

@freezed
class PokemonDetailsModel with _$PokemonDetailsModel {
  factory PokemonDetailsModel({
    int? baseExperience,
    int? height,
    int? id,
    bool? isDefault,
    List<Moves>? moves,
    String? name,
    int? order,
    Sprites? sprites,
    List<Stats>? stats,
    List<Types>? types,
    int? weight,
  }) = _PokemonDetailsModel;

  factory PokemonDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsModelFromJson(json);
}

@freezed
class Types with _$Types {
  factory Types({
    int? slot,
    Type? type,
  }) = _Types;

  factory Types.fromJson(Map<String, dynamic> json) => _$TypesFromJson(json);
}

@freezed
class Type with _$Type {
  factory Type({
    String? name,
    String? url,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}

@freezed
class Stats with _$Stats {
  factory Stats({
    int? baseStat,
    int? effort,
    Stat? stat,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}

@freezed
class Stat with _$Stat {
  factory Stat({
    String? name,
    String? url,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

@freezed
class Moves with _$Moves {
  factory Moves({
    String? name,
    String? url,
  }) = _Moves;

  factory Moves.fromJson(Map<String, dynamic> json) => _$MovesFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  factory Sprites({
    String? frontDefault,
    String? frontShiny,
    String? frontFemale,
    String? frontShinyFemale,
    String? backDefault,
    String? backShiny,
    String? backFemale,
    String? backShinyFemale,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
class VersionGroupDetails with _$VersionGroupDetails {
  factory VersionGroupDetails({
    int? levelLearnedAt,
    MoveLearnMethod? moveLearnMethod,
    VersionGroup? versionGroup,
  }) = _VersionGroupDetails;

  factory VersionGroupDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailsFromJson(json);
}

@freezed
class VersionGroup with _$VersionGroup {
  factory VersionGroup({
    String? name,
    String? url,
  }) = _VersionGroup;

  factory VersionGroup.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupFromJson(json);
}

@freezed
class MoveLearnMethod with _$MoveLearnMethod {
  factory MoveLearnMethod({
    String? name,
    String? url,
  }) = _MoveLearnMethod;

  factory MoveLearnMethod.fromJson(Map<String, dynamic> json) =>
      _$MoveLearnMethodFromJson(json);
}

@freezed
class Move with _$Move {
  factory Move({
    String? name,
    String? url,
  }) = _Move;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}
