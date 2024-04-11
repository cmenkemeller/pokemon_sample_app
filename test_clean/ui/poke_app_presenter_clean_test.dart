import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokemon_before_optimization/_clean/ui/poke_app_presenter_clean.dart';
import 'package:pokemon_before_optimization/_clean/ui/poke_app_screen_clean.dart';
import 'package:pokemon_before_optimization/cubits/pokemon_list_cubit.dart';

class MockPokemonListCubit extends MockCubit<PokemonListViewModel>
    implements PokemonListCubit {}

void main() {
  group('PokeAppPresenter', () {
    late PokemonListCubit mockPokemonListCubit;

    setUp(() {
      mockPokemonListCubit = MockPokemonListCubit();
    });

    buildWidget() {
      return MaterialApp(
        home: PokeAppPresenter(
          pokemonListCubit: mockPokemonListCubit,
        ),
      );
    }

    testWidgets('verify presenter presents loading state',
        (widgetTester) async {
      when(() => mockPokemonListCubit.state)
          .thenReturn(PokemonListViewModel.loading());
      await widgetTester.pumpWidget(buildWidget());
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.byType(PokeAppScreen), findsNothing);
    });

    testWidgets('verify presenter presents data state',
        (widgetTester) async {
      when(() => mockPokemonListCubit.state)
          .thenReturn(const PokemonListViewModel(pokemonList: []));
      await widgetTester.pumpWidget(buildWidget());
      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.byType(PokeAppScreen), findsOneWidget);
    });
  });
}
