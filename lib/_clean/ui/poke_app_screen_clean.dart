import 'package:flutter/material.dart';
import 'package:pokemon_before_optimization/_clean/ui/pokemon_entry_widget.dart';
import 'package:pokemon_before_optimization/models/pokemon_model.dart';

class PokeAppScreen extends StatelessWidget {
  final List<PokemonModel> pokeList;
  const PokeAppScreen({required this.pokeList, super.key});

  @override
  Widget build(BuildContext context) {
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
              return PokemonEntryWidget(pokemon: pokemon);
            }),
      ],
    );
  }
}
