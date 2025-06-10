class Character {
  int x;
  int y;

  Character({required this.x, required this.y});

  factory Character.init() {
    return Character(x: 0, y: 0);
  }

  void moveTop() {
    y += 1;
  }

  void moveDown() {
    y -= 1;
  }

  void moveRight() {
    x += 1;
  }

  void moveLeft() {
    x -= 1;
  }

  void printCharacterPosition() {
    print('character is at ($x,$y)');
  }
}
