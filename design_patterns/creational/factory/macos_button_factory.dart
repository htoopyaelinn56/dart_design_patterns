import 'button.dart';
import 'button_factory.dart';
import 'macos_button.dart';

class MacosButtonFactory implements ButtonFactory {
  @override
  Button createButton() {
    return MacosButton();
  }
}
