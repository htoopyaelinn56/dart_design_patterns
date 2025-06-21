import 'game_state.dart';
import 'snapshot.dart';

/// Care taker
class StateManager {
  final List<Snapshot> _snapshots = [];
  final GameState _gameState;

  StateManager({required GameState gameState}) : _gameState = gameState;

  void saveState() {
    _snapshots.add(_gameState.createSnapshot());
  }

  void restoreState(int index) {
    if (index < 0 || index >= _snapshots.length) {
      throw RangeError('Invalid snapshot index');
    }
    final snapshot = _snapshots[index];
    _gameState.restoreFromSnapshot(snapshot);
  }
}
