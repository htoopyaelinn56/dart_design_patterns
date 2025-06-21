// [https://refactoring.guru/design-patterns/memento]

import 'game_state.dart';
import 'state_manager.dart';

void main() {
  final gameState = GameState(state: 'start');
  final stateManager = StateManager(gameState: gameState);

  gameState.state = 'level 1';
  stateManager.saveState();
  print('Currently: ${gameState.state}');

  gameState.state = 'level 2';
  stateManager.saveState();
  print('Currently: ${gameState.state}');

  stateManager.restoreState(0);
  print('Restored to: ${gameState.state}');
}
