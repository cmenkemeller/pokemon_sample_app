import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_before_optimization/cubits/pokemon_details_cubit.dart';

class PokeDetailsScreen extends StatelessWidget {
  final String pokemonId;
  const PokeDetailsScreen({required this.pokemonId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonDetailsCubit>(
      create: (context) => PokemonDetailsCubit()..loadPokemonDetails(pokemonId),
      child: BlocBuilder<PokemonDetailsCubit, PokemonDetailsViewModel>(
        builder: (context, state) {
          return Scaffold(
              body: NestedScrollView(
            headerSliverBuilder: (context, _) => [
              const SliverAppBar.large(
                title: Text('PokeDetails'),
              ),
            ],
            body: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              state.pokemonDetails!.sprites?.frontDefault,
                              state.pokemonDetails!.sprites?.backDefault,
                            ]
                                .map((sprite) => Image.network(sprite ?? ''))
                                .toList(),
                          ),
                          ListTile(
                            leading: const Icon(Icons.info),
                            title: const Text('Name'),
                            subtitle: Text(
                                state.pokemonDetails?.name?.capitalize ?? ''),
                          ),
                          ListTile(
                            leading: const Icon(Icons.arrow_circle_up),
                            title: const Text('Experience'),
                            subtitle: Text(
                                (state.pokemonDetails?.baseExperience ?? 0)
                                    .toString()),
                          ),
                          ListTile(
                            leading: const Icon(Icons.height),
                            title: const Text('Height'),
                            subtitle: Text(
                                (state.pokemonDetails?.height ?? 0).toString()),
                          ),
                          ListTile(
                            leading: const Icon(Icons.monitor_weight),
                            title: const Text('Weight'),
                            subtitle: Text(
                                (state.pokemonDetails?.weight ?? 0).toString()),
                          ),
                          ListTile(
                            leading: const Icon(Icons.format_list_numbered),
                            title: const Text('Moves'),
                            subtitle: ListView(
                              shrinkWrap: true,
                              primary: false,
                                children: state.pokemonDetails?.moves
                                        ?.map(
                                          (move) => Text(move.move?.name ?? ''),
                                        )
                                        .toList() ??
                                    []),
                          ),
                          /*  Text('ID: ${state.pokemonDetails?.id ?? ''}'),
                          Text(
                              'Base Experience: ${state.pokemonDetails?.baseExperience ?? ''}'),
                          Text('Height: ${state.pokemonDetails?.height ?? ''}'),
                          Text('Weight: ${state.pokemonDetails?.weight ?? ''}'),
                          Text(
                              'Is Default: ${state.pokemonDetails?.isDefault ?? ''}'),
                          Text('Order: ${state.pokemonDetails?.order ?? ''}'),
                          Text(
                              'Types: ${state.pokemonDetails?.types?.map((type) => type.type?.name).join(', ') ?? ''}'),
                          Text(
                              'Moves: ${state.pokemonDetails?.moves?.map((move) => move.move?.name).join(', ') ?? ''}'),
                          Text(
                              'Stats: ${state.pokemonDetails?.stats?.map((stat) => '${stat.stat?.name}: ${stat.baseStat}').join(', ') ?? ''}'),
                        */
                        ],
                      )
                    ],
                  ),
          ));
        },
      ),
    );
  }
}
