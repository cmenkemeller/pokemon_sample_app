import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse({
    required int count,
    required String? next,
    required String? previous,
    required List<PokemonModel> results,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}

@freezed
class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required String name,
    required Uri url,
  }) = _PokemonModel;

  const PokemonModel._();

  String get id =>
      url.pathSegments.length > 1 ? url.pathSegments.reversed.elementAt(1) : '';
  String get spriteUrl =>
      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png";

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}
