import 'button.dart';
import 'checkbox.dart';
import 'macos_button.dart';
import 'macos_checkbox.dart';
import 'ui_factory.dart';

class MacosUiFactory implements UiFactory {
  @override
  Checkbox createCheckbox() {
    return MacosCheckbox();
  }

  @override
  Button createButton() {
    return MacosButton();
  }
}
