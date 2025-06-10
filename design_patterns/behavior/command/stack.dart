class Stack<T> {
  final List<T> _stack = [];

  void push(T element) {
    _stack.add(element);
  }

  T? pop() {
    if (_stack.isEmpty) {
      return null;
    }
    return _stack.removeLast();
  }

  T? peek() {
    if (_stack.isEmpty) {
      return null;
    }
    return _stack.last;
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }
}