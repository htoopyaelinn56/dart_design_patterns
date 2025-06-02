// https://refactoring.guru/design-patterns/flyweight

import 'expensive_object_factory.dart';

void main() {
  final expensiveObjectFactory = ExpensiveObjectFactory();

  final expensiveObject = expensiveObjectFactory.createObject('1');
  final sameExpensiveObject = expensiveObjectFactory.createObject('1');
  final newExpensiveObject = expensiveObjectFactory.createObject('2');
}
