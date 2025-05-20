// https://refactoring.guru/design-patterns/factory-method

import 'dart:io';

import 'macos_button_factory.dart';
import 'windows_button_factory.dart';

void main() {
  final buttonFactory = switch (Platform.operatingSystem) {
    'macos' => MacosButtonFactory(),
    'windows' => WindowsButtonFactory(),
    _ => throw UnsupportedError('Unsupported platform'),
  };

  final button = buttonFactory.createButton();
  button.render();
  button.onClick();
}
