import 'button.dart';

class MacosButton implements Button {
  @override
  void onClick() {
    print('Macos button clicked');
  }

  @override
  void render() {
    print('Rendering Macos button');
  }
}
