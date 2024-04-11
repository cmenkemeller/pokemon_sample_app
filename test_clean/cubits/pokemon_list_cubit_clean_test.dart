import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokemon_before_optimization/_clean/api/poke_service_clean.dart';
import 'package:pokemon_before_optimization/_clean/cubits/pokemon_list_cubit_clean.dart';

class MockPokeServiceClean extends Mock implements PokeServiceClean {}

void main() {
  group('PokemonListCubit', () {
    late PokeServiceClean pokeService;

    setUp(() => pokeService = MockPokeServiceClean());

    blocTest('verify getPokemonList',
        setUp: () =>
            when(() => pokeService.getPokemons()).thenAnswer((_) async => []),
        build: () => PokemonListCubit(pokeService: pokeService),
        act: (cubit) => cubit.getPokemonList(),
        expect: () => [
              const PokemonListViewModel(pokemonList: []),
            ]);
  });

  group('PokemonListViewModel', () {
    test('props', () {
      const pokemonListViewModel = PokemonListViewModel(pokemonList: []);
      expect(pokemonListViewModel.props, [pokemonListViewModel.pokemonList]);
    });
  });
}
