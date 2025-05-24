import 'ui_widget.dart';

class View extends UiWidget {
  View(super.id);

  @override
  void paint() {
    print('Painting View : $id');
  }
}
