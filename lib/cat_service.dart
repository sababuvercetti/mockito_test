import 'package:dio/dio.dart';
import 'package:mockito_test/models/cat_breed/cat_breed.dart';
import 'package:mockito_test/rest_client/rest_client.dart';

class CatService {
  Future getCats() async {
    try {
      var response = await RestClient().dio.get(
          'https://api.thecatapi.com/v1/breeds',
          options: Options(
              headers: {'x-api-key': '1388090b-bec1-4ab1-b868-f8f651d2abfb'}));
      List cats = response.data;
      return cats.map((e) => CatBreed.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
