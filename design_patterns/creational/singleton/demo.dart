// https://refactoring.guru/design-patterns/singleton

import 'eager_singleton.dart';
import 'lazy_singleton.dart';

void main() {
  final eagerSingleton = EagerSingleton.getInstance();
  print(eagerSingleton);

  final lazySingleton = LazySingleton.getInstance();
  print(lazySingleton);
}
