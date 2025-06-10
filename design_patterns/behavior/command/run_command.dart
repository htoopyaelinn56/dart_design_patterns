

import 'character_command.dart';

class RunCommand extends CharacterCommand {
  RunCommand({required super.character});

  @override
  void execute() {
    character.moveRight();
    character.moveRight();
    character.moveRight();
  }

  @override
  void undo() {
    character.moveLeft();
    character.moveLeft();
    character.moveLeft();
  }
}