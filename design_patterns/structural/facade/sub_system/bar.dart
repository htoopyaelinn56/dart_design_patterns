class Bar {
  Future<void> makeDrink(String drink) async {
    print('🍹 Bar: Making $drink...');
    await Future.delayed(Duration(seconds: 1));
    print('✅ Bar: $drink is ready!');
  }
}