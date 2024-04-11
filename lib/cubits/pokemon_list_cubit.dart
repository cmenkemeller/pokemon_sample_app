import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_before_optimization/api/poke_service.dart';
import 'package:pokemon_before_optimization/models/pokemon_model.dart';

class PokemonListCubit extends Cubit<PokemonListViewModel> {
  PokemonListCubit():
        super(PokemonListViewModel.loading());
  getPokemonList() {
    PokeService().getPokemons().then((pokemonList) {
      emit(PokemonListViewModel(pokemonList: pokemonList));
    });
  }
}

class PokemonListViewModel extends Equatable {
  final bool isLoading;
  final List<PokemonModel> pokemonList;

  const PokemonListViewModel(
      {required this.pokemonList, this.isLoading = false});

  factory PokemonListViewModel.loading() =>
      const PokemonListViewModel(pokemonList: [], isLoading: true);

  @override
  List<Object?> get props => [pokemonList];
}
