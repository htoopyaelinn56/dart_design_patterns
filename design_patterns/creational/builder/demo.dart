// https://refactoring.guru/design-patterns/builder

import 'player_character.dart';

void main() {
  final humanWarriorBuilder = PlayerCharacterBuilder()
      .setName('Player 1')
      .setRace(Race.human)
      .setPlayerClass(PlayerClass.warrior);

  final armsWarrior =
      humanWarriorBuilder.setPlayerSpec(PlayerSpec.arms).build();
  print(armsWarrior);

  final furyWarrior =
      humanWarriorBuilder.setPlayerSpec(PlayerSpec.fury).build();
  print(furyWarrior);
}
