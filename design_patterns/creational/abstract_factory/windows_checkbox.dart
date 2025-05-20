import 'checkbox.dart';

class WindowsCheckbox implements Checkbox {
  @override
  void onClick() {
    print('Windows checkbox clicked');
  }

  @override
  void render() {
    print('Windows checkbox rendered');
  }
}
