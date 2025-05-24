// https://refactoring.guru/design-patterns/composite

import 'view.dart';
import 'view_group.dart';

void main() {
  final viewGroup = ViewGroup('Application');

  final textView = View('Hello World');
  final buttonView = View('Button');
  final leftSideViewGroup = ViewGroup('LeftSideViewGroup');
  leftSideViewGroup.add(textView);
  leftSideViewGroup.add(buttonView);

  final imageView = View('Image');
  final imageDescription = View('Image Description');
  final rightSideViewGroup = ViewGroup('RightSideViewGroup');
  rightSideViewGroup.add(imageView);
  rightSideViewGroup.add(imageDescription);

  viewGroup.add(leftSideViewGroup);
  viewGroup.add(rightSideViewGroup);

  viewGroup.paint();
}
