// https://refactoring.guru/design-patterns/abstract-factory

import 'dart:io';

import 'application.dart';
import 'macos_ui_factory.dart';
import 'windows_ui_factory.dart';

void main() {
  final uiFactory = switch (Platform.operatingSystem) {
    'macos' => MacosUiFactory(),
    'windows' => WindowsUiFactory(),
    _ => throw UnsupportedError('Unsupported platform'),
  };

  final application = Application(uiFactory);
  application.paint();
  application.buttonOnClick();
  application.checkboxOnClick();
}
