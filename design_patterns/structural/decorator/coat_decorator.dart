import 'person_decorator.dart';

class CoatDecorator extends PersonDecorator {
  CoatDecorator(super.person);

  @override
  String describe() {
    return '${person.describe()} with a coat';
  }
}
