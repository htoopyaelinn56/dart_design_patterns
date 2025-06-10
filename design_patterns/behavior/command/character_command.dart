import 'character.dart';

abstract class CharacterCommand {
  final Character character;

  CharacterCommand({required this.character});

  void execute();

  void undo();
}