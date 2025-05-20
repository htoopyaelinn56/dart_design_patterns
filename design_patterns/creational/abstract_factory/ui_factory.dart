import 'button.dart';
import 'checkbox.dart';

abstract class UiFactory {
  Checkbox createCheckbox();
  Button createButton();
}
