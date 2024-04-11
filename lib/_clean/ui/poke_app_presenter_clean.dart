import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_before_optimization/cubits/pokemon_list_cubit.dart';
import 'package:pokemon_before_optimization/_clean/ui/poke_app_screen_clean.dart';

class PokeAppPresenter extends StatelessWidget {
  final PokemonListCubit _pokemonListCubit;
  PokeAppPresenter({PokemonListCubit? pokemonListCubit, super.key})
      : _pokemonListCubit = pokemonListCubit ?? PokemonListCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _pokemonListCubit..getPokemonList(),
        child: BlocBuilder<PokemonListCubit, PokemonListViewModel>(
            builder: (context, viewModel) {
          final pokeList = viewModel.pokemonList;
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return PokeAppScreen(pokeList: pokeList);
        }),
      ),
    );
  }
}
