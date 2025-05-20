import 'button.dart';
import 'checkbox.dart';
import 'ui_factory.dart';
import 'windows_button.dart';
import 'windows_checkbox.dart';

class WindowsUiFactory implements UiFactory {
  @override
  Button createButton() {
    return WindowsButton();
  }

  @override
  Checkbox createCheckbox() {
    return WindowsCheckbox();
  }
}
