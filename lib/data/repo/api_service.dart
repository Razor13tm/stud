import 'dart:convert';
import 'dart:developer';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:stud/data/models/character.dart';
import 'package:dio/dio.dart';
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
      var response = await dio.get('$url?page=$page&name=$name');
      return Character.fromJson(response.data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
