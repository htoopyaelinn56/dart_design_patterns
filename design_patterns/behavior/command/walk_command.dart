import 'character_command.dart';

class WalkCommand extends CharacterCommand {
  WalkCommand({required super.character});

  @override
  void execute() {
    character.moveRight();
  }

  @override
  void undo() {
    character.moveLeft();
  }
}