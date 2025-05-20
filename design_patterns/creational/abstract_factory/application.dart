import 'button.dart';
import 'checkbox.dart';
import 'ui_factory.dart';

class Application {
  late Button _button;
  late Checkbox _checkbox;

  final UiFactory uiFactory;
  Application(this.uiFactory) {
    _button = uiFactory.createButton();
    _checkbox = uiFactory.createCheckbox();
  }

  void paint() {
    _button.render();
    _checkbox.render();
  }

  void buttonOnClick() {
    _button.onClick();
  }

  void checkboxOnClick() {
    _checkbox.onClick();
  }
}
