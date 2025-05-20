import 'checkbox.dart';

class MacosCheckbox implements Checkbox {
  @override
  void onClick() {
    print('Macos checkbox clicked');
  }

  @override
  void render() {
    print('Macos checkbox rendered');
  }
}
