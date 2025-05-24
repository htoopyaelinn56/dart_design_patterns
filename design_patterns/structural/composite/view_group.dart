import 'ui_widget.dart';

class ViewGroup extends UiWidget {
  final List<UiWidget> children = [];
  ViewGroup(super.id);

  @override
  void paint() {
    print('Painting View Group : $id');
    for (final child in children) {
      child.paint();
    }
  }

  void add(UiWidget uiWidget) {
    children.add(uiWidget);
  }
}
