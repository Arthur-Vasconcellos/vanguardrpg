import 'dart:core';

import 'package:lista_de_tarefas/lists/enums.dart';

class WeaponModel {
  static const type = ItemTypes.weapon;
  late final name;
  late final int costMultiplier;
  late final double damageMultiplier;
  late final forValue;
  late final int diceType;
  late final int range;
  late final int slotsUsed;
  late final List<Enum> craftingTypes;
  late final List characteristics;
  late final Enum skill;

  WeaponModel(
      this.name,
      this.costMultiplier,
      this.damageMultiplier,
      this.forValue,
      this.diceType,
      this.range,
      this.slotsUsed,
      this.craftingTypes,
      this.characteristics,
      this.skill);
}
