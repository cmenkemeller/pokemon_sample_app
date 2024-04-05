import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon_before_optimization/models/pokemon_model.dart';
import 'package:pokemon_before_optimization/screens/poke_details_screen.dart';

class PokeApp extends StatelessWidget {
  const PokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: http
              .get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151')),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError || !snapshot.hasData) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            final List<dynamic> pokemonsResponse =
                json.decode(snapshot.data!.body)['results'];
            final pokeList = pokemonsResponse
                .map((json) => PokemonModel.fromJson(json))
                .toList();
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
                          child: CachedNetworkImage(
                            imageUrl: pokemon.spriteUrl,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            );
          }),
    );
  }
}
