import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stud/data/models/character.dart';
import 'package:stud/data/repo/api_service.dart';
import '../data/repo/local/character_db_service.dart';

part 'character_bloc.freezed.dart';

part 'character_event.dart';

part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final ApiService characterRepo;
  CharacterDBService characterService = CharacterDBService();

  CharacterBloc({required this.characterRepo})
      : super(const CharacterState.loading()) {
    on<CharacterEventFetch>((event, emit) async {
      emit(const CharacterState.loading());
      try {
       await characterService.init();
        Character characterLoaded = await characterRepo
            .getCharacter(event.page, event.name)
            .timeout(const Duration(seconds: 5));
       await characterService.addCharacter(character: characterLoaded);
        emit(CharacterState.loaded(
            characterLoaded: characterService.getCharacterFromDb()));
      } catch (_) {
        emit(const CharacterState.error());
        rethrow;
      }
    });
  }
}
