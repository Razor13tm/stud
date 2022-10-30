import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@HiveType(typeId: 1)
@freezed
class Character with _$Character {
  const factory Character(
      {
      @HiveField(0)
      required Info info,
      @HiveField(1)
      required List<Results> results}) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@HiveType(typeId: 2)
@freezed
class Info with _$Info {
  const factory Info({
    @HiveField(0)
    required int count,
     @HiveField(1)
    required int pages,
     @HiveField(2)
    String? next,
     @HiveField(3)
    String? prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@HiveType(typeId: 3)
@freezed
class Results with _$Results {
  const factory Results({
    @HiveField(0)
    required int id,
     @HiveField(1)
    required String name,
     @HiveField(2)
    required String status,
    @HiveField(3)
    required String species,
    @HiveField(4)
    required String type,
    @HiveField(5)
    required String gender,
    @HiveField(6)
    required String image,
    @HiveField(7)
    required List<String> episode,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
