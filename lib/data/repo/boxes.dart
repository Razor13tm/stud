

import 'package:hive/hive.dart';

import '../models/character.dart';

class Boxes {
static Box<Character> getCharacter() => Hive.box<Character>('character');
}