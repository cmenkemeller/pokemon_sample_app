import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:pokemon_before_optimization/_clean/ui/poke_app_screen_clean.dart';
import 'package:pokemon_before_optimization/_clean/ui/pokemon_entry_widget.dart';
import 'package:pokemon_before_optimization/models/pokemon_model.dart';

void main() {
  group('PokeAppScreen', () {
    buildWidget(List<PokemonModel> pokeList) {
      return MaterialApp(
        home: Material(
          //or you can use Scaffold
          child: PokeAppScreen(
            pokeList: pokeList,
          ),
        ),
      );
    }

    testWidgets('verify screen is presented - empty list',
        (widgetTester) async {
      await widgetTester.pumpWidget(buildWidget([]));
      await widgetTester.pumpAndSettle();
      expect(find.byType(CustomScrollView), findsOne);
      expect(find.byType(SliverAppBar), findsOne);
    });

    testWidgets('verify screen is presented - with list', (widgetTester) async {
      final PokemonModel mockPokemon =
          PokemonModel(name: 'Test Pokemon', url: Uri.parse('testurl.com/21'));
      await mockNetworkImages(() async =>
          await widgetTester.pumpWidget(buildWidget([mockPokemon])));
      await widgetTester.pumpAndSettle();
      expect(find.byType(CustomScrollView), findsOne);
      expect(find.byType(SliverAppBar), findsOne);
      expect(find.byType(SliverList), findsOne);
      expect(find.byType(PokemonEntryWidget), findsOne);
    });
  });
}
