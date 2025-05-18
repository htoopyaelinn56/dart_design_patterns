class LazySingleton {
  static LazySingleton? _instance;

  LazySingleton._();

  static LazySingleton getInstance() {
    print('LazySingleton is created');
    _instance ??= LazySingleton._();
    return _instance!;
  }
}
