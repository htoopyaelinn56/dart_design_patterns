abstract class UiWidget {
  final String id;

  UiWidget(this.id);

  void paint() {
    print('Painting $id');
  }
}
