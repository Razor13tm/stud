import 'package:hive_flutter/hive_flutter.dart';
import 'package:stud/data/models/character.dart';

class CharacterDBService {
  late Box<Character> _characterBox;

  Future<void> init() async {
    _characterBox = await Hive.openBox<Character>('character');
  }

  Future<Object> addCharacter({required Character character}) async {
    await _characterBox.clear();
    await _characterBox.add(character);
    return character;
  }

  Character getCharacterFromDb() => _characterBox.values.first;
}
