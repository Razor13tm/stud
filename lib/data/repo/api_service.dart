import 'dart:convert';
import 'dart:developer';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:stud/data/models/character.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'local/character_db_service.dart';

const url = 'https://rickandmortyapi.com/api/character';

class ApiService {
  CharacterDBService characterService = CharacterDBService();

  Future<Character> getCharacter(int page, String name) async {
    var dio = Dio();
    dio.interceptors.add(DioLoggingInterceptor(
      level: Level.body,
      compact: false,
    ));
    try {
      // var response2 =
      // await dio.get((Uri.parse('$url?page=$page&name=$name')).toString());
      var response = await http.get(Uri.parse('$url?page=$page&name=$name'));
      var jsonResult = jsonDecode(response.body);
      return Character.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
