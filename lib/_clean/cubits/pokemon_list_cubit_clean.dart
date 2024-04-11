import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_before_optimization/_clean/api/poke_service_clean.dart';
import 'package:pokemon_before_optimization/models/pokemon_model.dart';

class PokemonListCubit extends Cubit<PokemonListViewModel> {
  final PokeServiceClean _pokeService;
  PokemonListCubit({PokeServiceClean? pokeService})
      : _pokeService = pokeService ?? PokeServiceClean(),
        super(PokemonListViewModel.loading());

  getPokemonList() {
    _pokeService.getPokemons().then((pokemonList) {
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
