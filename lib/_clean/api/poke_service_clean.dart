import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokemon_before_optimization/constants.dart';
import 'package:pokemon_before_optimization/models/pokemon_details_model.dart';
import 'package:pokemon_before_optimization/models/pokemon_model.dart';

abstract class IPokeService {
  Future<List<PokemonModel>> getPokemons();
  Future<PokemonDetailsModel> getPokemonDetails(String id);
}

class PokeServiceClean implements IPokeService {
  final http.Client _client;
  PokeServiceClean({http.Client? client}) : _client = client ?? http.Client();

  @override
  Future<List<PokemonModel>> getPokemons() async {
    final response = await _client
        .get(Uri.https(Constants.coreUrl, Constants.pokemonListUrl));
    if (response.statusCode == 200) {
      final List<dynamic> pokemons = json.decode(response.body)['results'];
      return pokemons.map((json) => PokemonModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load pokemons');
    }
  }

  @override
  Future<PokemonDetailsModel> getPokemonDetails(String id) async {
    final response = await _client
        .get(Uri.https(Constants.coreUrl, '${Constants.pokemonDetailsUrl}$id'));
    if (response.statusCode == 200) {
      final pokemon = json.decode(response.body);
      return PokemonDetailsModel.fromJson(pokemon);
    } else {
      throw Exception('Failed to load pokemons');
    }
  }
}
