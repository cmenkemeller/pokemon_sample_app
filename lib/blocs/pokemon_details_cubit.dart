import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_before_optimization/models/pokemon_details_model.dart';
import 'package:http/http.dart' as http;

class PokemonDetailsCubit extends Cubit<PokemonDetailsViewModel> {
  PokemonDetailsCubit() : super(PokemonDetailsViewModel.loading());

  Future<void> loadPokemonDetails(String id) async {
    emit(const PokemonDetailsViewModel(
      isLoading: true,
      pokemonDetails: null,
    ));

    final response =
        await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$id'));
    final parseedRespones = json.decode(response.body);
    final pokemonDetails = PokemonDetailsModel.fromJson(parseedRespones);

    emit(PokemonDetailsViewModel(
      isLoading: false,
      pokemonDetails: pokemonDetails,
    ));
  }
}

class PokemonDetailsViewModel extends Equatable {
  final bool isLoading;
  final PokemonDetailsModel? pokemonDetails;

  const PokemonDetailsViewModel({required this.isLoading, this.pokemonDetails});

  factory PokemonDetailsViewModel.loading() {
    return const PokemonDetailsViewModel(isLoading: true);
  }

  @override
  List<Object?> get props => [isLoading, pokemonDetails];
}
