import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:pokemon_before_optimization/_clean/ui/pokemon_entry_widget.dart';
import 'package:pokemon_before_optimization/models/pokemon_model.dart';

void main() {
  group('PokemonEntryWidget', () {
    const mockPokemonName = 'Cardinolonk';
    testWidgets('verify widget is presented', (widgetTester) async {
      final widget = MaterialApp(
        home: Scaffold(
            body: PokemonEntryWidget(
          pokemon: PokemonModel(name: mockPokemonName, url: Uri.http('')),
        )),
      );
      await mockNetworkImages(
        () async => widgetTester.pumpWidget(widget),
      );

      expect(find.text(mockPokemonName.capitalize), findsOneWidget);
      expect(find.byType(ListTile), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
    });
  });
}
