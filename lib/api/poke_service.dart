import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokemon_before_optimization/models/pokemon_model.dart';

class PokeService {
  Future<List<PokemonModel>> getPokemons() async {
    final response = await http
        .get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151'));
    if (response.statusCode == 200) {
      final List<dynamic> pokemons = json.decode(response.body)['results'];
      return pokemons.map((json) => PokemonModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load pokemons');
    }
  }

  Future<List<PokemonModel>> getPokemonDetails() async {
    final response = await http
        .get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151'));
    if (response.statusCode == 200) {
      final List<dynamic> pokemons = json.decode(response.body)['results'];
      return pokemons.map((json) => PokemonModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load pokemons');
    }
  }
}
