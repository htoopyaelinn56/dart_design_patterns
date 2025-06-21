/// Memento
class Snapshot {
  final String _state;

  Snapshot({required String state}) : _state = state;

  String get state => _state;
}
