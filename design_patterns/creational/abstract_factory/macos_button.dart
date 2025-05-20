import 'button.dart';

class MacosButton implements Button {
  @override
  void onClick() {
    print('Macos Button Clicked');
  }

  @override
  void render() {
    print('Macos Button Rendered');
  }
}
