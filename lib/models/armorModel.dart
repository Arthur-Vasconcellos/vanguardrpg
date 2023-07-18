import 'dart:core';

class ArmorModel {
  late final name;
  late final int costMultiplier;
  late final int? durabilityMultiplier;
  late final int encumbrance;
  late final int slotsUsed;
  late final int protectionMultiplier;
  late final List<Enum> craftingTypes;
  late final List characteristics;

  ArmorModel(
      this.name,
      this.costMultiplier,
      this.durabilityMultiplier,
      this.encumbrance,
      this.slotsUsed,
      this.protectionMultiplier,
      this.craftingTypes,
      this.characteristics);
}
