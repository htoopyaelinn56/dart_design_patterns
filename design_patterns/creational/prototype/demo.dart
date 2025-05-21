// https://refactoring.guru/design-patterns/prototype

import 'expensive_object.dart';

void main() async {
  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 1));
    return 'dataFromServer';
  }

  Future<String> getDataFromFileSystem() async {
    await Future.delayed(const Duration(seconds: 1));
    return 'dataFromFileSystem';
  }

  final expensiveObject = ExpensiveObject(
    dataFromServer: await getDataFromServer(),
    dataFromFileSystem: await getDataFromFileSystem(),
  );

  final expensiveObject2 = expensiveObject.clone();
  print(expensiveObject2.dataFromServer);
  print(expensiveObject2.dataFromFileSystem);
}
