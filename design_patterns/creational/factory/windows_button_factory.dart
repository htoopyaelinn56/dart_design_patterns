import 'button.dart';
import 'button_factory.dart';
import 'windows_button.dart';

class WindowsButtonFactory implements ButtonFactory {
  @override
  Button createButton() {
    return WindowsButton();
  }
}
