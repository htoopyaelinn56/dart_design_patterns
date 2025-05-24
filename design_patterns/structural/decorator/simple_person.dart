import 'person.dart';

class SimplePerson implements Person {
  final String name;
  SimplePerson(this.name);

  @override
  String describe() {
    return 'This is $name';
  }
}
