import 'button.dart';

class WindowsButton implements Button {
  @override
  void onClick() {
    print('Windows button clicked');
  }

  @override
  void render() {
    print('Windows button rendered');
  }
}
