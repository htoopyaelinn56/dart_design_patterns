import 'snapshot.dart';

/// Originator
class GameState {
  String _state;

  GameState({required String state}) : _state = state;

  set state(String newState) {
    _state = newState;
  }

  String get state => _state;

  Snapshot createSnapshot() {
    return Snapshot(state: _state);
  }

  void restoreFromSnapshot(Snapshot snapshot) {
    _state = snapshot.state;
  }
}
