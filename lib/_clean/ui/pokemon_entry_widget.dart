import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_before_optimization/models/pokemon_model.dart';
import 'package:pokemon_before_optimization/ui/poke_details_screen.dart';

class PokemonEntryWidget extends StatelessWidget {
  final PokemonModel pokemon;
  final double imageSize;
  const PokemonEntryWidget(
      {required this.pokemon, this.imageSize = 42, super.key});

  @override
  Widget build(BuildContext context) {
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
        height: imageSize,
        width: imageSize,
        child: Image.network(
          fit: BoxFit.cover,
          pokemon.spriteUrl,
        ),
      ),
    );
  }
}
