import 'person.dart';

class PersonDecorator implements Person {
  final Person person;
  PersonDecorator(this.person);

  @override
  String describe() {
    return person.describe();
  }
}
