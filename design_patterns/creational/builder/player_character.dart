// in dart, builder pattern is not mandatory because
// dart has named constructor, but builder pattern is
// useful when we have to check the validation of
// arguments, encapsulate the creation of object and
// reuse the common properties of object creation

enum Race {
  human(playableClass: [PlayerClass.warrior, PlayerClass.mage]),
  elf(playableClass: [PlayerClass.warrior, PlayerClass.druid]),
  orc(playableClass: [PlayerClass.warrior]);

  final List<PlayerClass> playableClass;
  const Race({required this.playableClass});
}

enum PlayerClass {
  warrior(specs: [PlayerSpec.arms, PlayerSpec.fury, PlayerSpec.protection]),
  mage(specs: [PlayerSpec.fire, PlayerSpec.frost, PlayerSpec.arcane]),
  druid(
    specs: [PlayerSpec.balance, PlayerSpec.restoration, PlayerSpec.guardian],
  );

  final List<PlayerSpec> specs;
  const PlayerClass({required this.specs});
}

enum PlayerSpec {
  arms,
  fury,
  protection,
  fire,
  frost,
  arcane,
  balance,
  restoration,
  guardian,
  feral,
}

class PlayerCharacter {
  final String name;
  final Race race;
  final PlayerClass playerClass;
  final PlayerSpec playerSpec;
  final int? level;
  final int? inventorySize;
  final int? goldInBag;

  PlayerCharacter({
    required this.name,
    required this.race,
    required this.playerClass,
    required this.playerSpec,
    this.level,
    this.inventorySize,
    this.goldInBag,
  });

  // just a named constructor, behave like constructor overloading in java
  // not to get confused with factory pattern
  factory PlayerCharacter.fromBuilder(PlayerCharacterBuilder builder) {
    return PlayerCharacter(
      name: builder.name!,
      race: builder.race!,
      playerClass: builder.playerClass!,
      playerSpec: builder.playerSpec!,
      level: builder.level ?? 1,
      inventorySize: builder.inventorySize ?? 4,
      goldInBag: builder.goldInBag ?? 0,
    );
  }

  @override
  String toString() {
    return 'PlayerCharacter(name: $name, race: $race, playerClass: $playerClass, playerSpec: $playerSpec, level: $level, inventorySize: $inventorySize, goldInBag: $goldInBag)';
  }
}

class PlayerCharacterBuilder {
  String? name;
  Race? race;
  PlayerClass? playerClass;
  PlayerSpec? playerSpec;
  int? level;
  int? inventorySize;
  int? goldInBag;

  PlayerCharacterBuilder setName(String name) {
    this.name = name;
    return this;
  }

  PlayerCharacterBuilder setRace(Race race) {
    this.race = race;
    return this;
  }

  PlayerCharacterBuilder setPlayerClass(PlayerClass playerClass) {
    this.playerClass = playerClass;
    return this;
  }

  PlayerCharacterBuilder setPlayerSpec(PlayerSpec playerSpec) {
    this.playerSpec = playerSpec;
    return this;
  }

  PlayerCharacterBuilder setLevel(int level) {
    this.level = level;
    return this;
  }

  PlayerCharacterBuilder setInventorySize(int inventorySize) {
    this.inventorySize = inventorySize;
    return this;
  }

  PlayerCharacterBuilder setGoldInBag(int goldInBag) {
    this.goldInBag = goldInBag;
    return this;
  }

  PlayerCharacter build() {
    if (name == null) {
      throw Exception('Name is required');
    }
    if (race == null) {
      throw Exception('Race is required');
    }
    if (playerClass == null) {
      throw Exception('PlayerClass is required');
    }
    if (!race!.playableClass.contains(playerClass)) {
      throw Exception('PlayerClass is not playable for this race');
    }
    if (playerSpec == null) {
      throw Exception('PlayerSpec is required');
    }
    if (!playerClass!.specs.contains(playerSpec)) {
      throw Exception('PlayerSpec is not playable for this playerClass');
    }

    return PlayerCharacter.fromBuilder(this);
  }
}
