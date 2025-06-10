import 'character_command.dart';

class JumpCommand extends CharacterCommand {
  JumpCommand({required super.character});

  @override
  void execute() {
    character.moveTop();
  }

  @override
  void undo() {
    character.moveDown();
  }
}
