// https://refactoring.guru/design-patterns/command

import 'character.dart';
import 'character_controller.dart';
import 'jump_command.dart';
import 'run_command.dart';
import 'walk_command.dart';

void main() {
  final character = Character.init();
  final characterController = CharacterController();

  character.printCharacterPosition();

  characterController.setCommand(RunCommand(character: character));
  character.printCharacterPosition();

  characterController.setCommand(JumpCommand(character: character));
  character.printCharacterPosition();

  characterController.setCommand(WalkCommand(character: character));
  character.printCharacterPosition();

  characterController.undo();
  character.printCharacterPosition();

  characterController.undo();
  character.printCharacterPosition();

  characterController.undo();
  character.printCharacterPosition();
}
