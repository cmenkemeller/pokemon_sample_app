import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_before_optimization/cubits/pokemon_list_cubit.dart';
import 'package:pokemon_before_optimization/ui/poke_details_screen.dart';

class PokeApp extends StatelessWidget {
  const PokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => PokemonListCubit()..getPokemonList(),
        child: BlocBuilder<PokemonListCubit, PokemonListViewModel>(
            builder: (context, viewModel) {
          final pokeList = viewModel.pokemonList;
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return CustomScrollView(
            slivers: [
              const SliverAppBar.large(
                title: Text('PokeAtlanta'),
                centerTitle: true,
              ),
              SliverList.builder(
                  itemCount: pokeList.length,
                  itemBuilder: (context, index) {
                    final pokemon = pokeList[index];
                    return ListTile(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PokeDetailsScreen(
                            pokemonId: pokemon.id,
                          ),
                        ),
                      ),
                      title: Text(pokemon.name.capitalize),
                      leading: SizedBox(
                        height: 42,
                        width: 42,
                        child: Image.network(
                          fit: BoxFit.cover,
                          pokemon.spriteUrl,
                        ),
                      ),
                    );
                  }),
            ],
          );
        }),
      ),
    );
  }
}
