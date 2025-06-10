import 'character_command.dart';
import 'stack.dart';

class CharacterController {
  final Stack<CharacterCommand> _commandStack = Stack();

  void setCommand(CharacterCommand command) {
    command.execute();
    _commandStack.push(command);
  }

  void undo() {
    _commandStack.pop()?.undo();
  }
}
