import 'dart:core';

class Item {
  late final String name;
  late final Enum craftingType;
  late final List characteristics;
  late final int slotsUsed;
  late final int itemClass;
  late final int cost;
  late final String? damageString;
  late final int? baseDamage;
  late final int? forValue;
  late final int? diceType;
  late final int? range;
  late final int? encumbrance;
  late final int? protection;
  late final Enum? functionality;
  late final Enum? skill;

  Item(
      this.name,
      this.craftingType,
      this.characteristics,
      this.slotsUsed,
      this.itemClass,
      this.cost,
      this.damageString,
      this.baseDamage,
      this.forValue,
      this.diceType,
      this.range,
      this.encumbrance,
      this.protection,
      this.functionality,
      this.skill);
}
