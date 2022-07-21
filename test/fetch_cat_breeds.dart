import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito_test/cat_service.dart';
import 'package:mockito_test/models/cat_breed/cat_breed.dart';
import 'package:mockito_test/rest_client/rest_client.dart';

@GenerateMocks([RestClient])
void main() {
  group('fetch breeds', () {
    test('returns a List of cat breeds if the http call completes successfully',
        () async {
      expect(await CatService().getCats(), isA<List<CatBreed>>());
    });
  });
}
