import 'dart:core';

class UtilityModel {
  late final name;
  late final int costMultiplier;
  late final int slotsUsed;
  late final List<Enum> craftingTypes;
  late final List characteristics;
  late final Enum functionality;
  late final Enum? skill;

  UtilityModel(this.name, this.costMultiplier, this.slotsUsed,
      this.craftingTypes, this.characteristics, this.functionality, this.skill);
}
