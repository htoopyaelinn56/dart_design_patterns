class EagerSingleton {
  static final EagerSingleton _instance = EagerSingleton._();

  EagerSingleton._() {
    print('Eager singleton is created');
  }

  static EagerSingleton getInstance() {
    return _instance;
  }
}
