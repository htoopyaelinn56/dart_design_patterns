// https://refactoring.guru/design-patterns/decorator

import 'coat_decorator.dart';
import 'hat_decorator.dart';
import 'person.dart';
import 'simple_person.dart';

void main() {
  final Person bobWithHat = HatDecorator(SimplePerson('Bob'));
  print(bobWithHat.describe());

  final Person bobWithCoatAndHat = CoatDecorator(bobWithHat);
  print(bobWithCoatAndHat.describe());

  final Person mikeWithCoat = CoatDecorator(SimplePerson('Mike'));
  print(mikeWithCoat.describe());
}
