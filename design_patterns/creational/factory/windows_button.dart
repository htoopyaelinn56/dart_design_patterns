import 'button.dart';

class WindowsButton implements Button {
  @override
  void onClick() {
    print('Windows Button Clicked');
  }

  @override
  void render() {
    print('Rendering Windows Button');
  }
}
