class Kitchen {
  Future<void> cookFood(String dish) async {
    print('👨‍🍳 Kitchen: Cooking $dish...');
    await Future.delayed(Duration(seconds: 1));
    print('✅ Kitchen: $dish is ready!');
  }
}