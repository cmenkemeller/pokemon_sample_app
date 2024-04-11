import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:pokemon_before_optimization/_clean/api/poke_service_clean.dart';
import 'package:pokemon_before_optimization/constants.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  group('PokeServiceClean', () {
    late http.Client mockClient;
    setUp(() {
      mockClient = MockHttpClient();
    });

    test('getPokemons - happy path', () async {
      final pokeService = PokeServiceClean(client: mockClient);
      final response = http.Response('{"results": []}', 200);

      when(() => mockClient.get(Uri.https(Constants.coreUrl, Constants.pokemonListUrl)))
          .thenAnswer((_) async => response);

      final result = await pokeService.getPokemons();

      expect(result, []);
    });

    test('getPokemons - exception path', () async {
      final pokeService = PokeServiceClean(client: mockClient);
      final response = http.Response('{"results": []}', 404);

      when(() => mockClient.get(Uri.https(Constants.coreUrl, Constants.pokemonListUrl)))
          .thenAnswer((_) async => response);

      expect(pokeService.getPokemons(), throwsException);
    });
  });
}
