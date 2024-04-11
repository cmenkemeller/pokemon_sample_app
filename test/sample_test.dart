import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_before_optimization/constants.dart';

void main() {
  test('sample test', () {
    Constants.pokemonDetailsUrl;
    Constants.pokemonListUrl;
    expect(2 + 2, equals(4));
  });
}
