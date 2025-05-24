import 'person_decorator.dart';

class HatDecorator extends PersonDecorator {
  HatDecorator(super.person);

  @override
  String describe() {
    return '${person.describe()} with a hat';
  }
}
