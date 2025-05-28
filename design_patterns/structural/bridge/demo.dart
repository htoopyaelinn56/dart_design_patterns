// https://refactoring.guru/design-patterns/bridge

import 'basic_remote.dart';
import 'tv.dart';

void main() {
  final tv = Tv();
  final tvRemote = BasicRemote(tv);

  tvRemote.turnOn();
  print(tv.isEnabled());

  final radio = Tv();
  final radioRemote = BasicRemote(radio);

  radioRemote.turnOn();
  print(radio.isEnabled());
}
