import 'dart:ffi';

import 'package:lista_de_tarefas/lists/enums.dart';
import 'package:lista_de_tarefas/models/armorModel.dart';
import 'package:lista_de_tarefas/models/ingredient.dart';
import 'package:lista_de_tarefas/models/utilityModel.dart';
import 'package:lista_de_tarefas/models/weaponModel.dart';

import '../models/item.dart';

Item createItem(ItemTypes type, ArmorModel? armor, WeaponModel? weapon,
    UtilityModel? utility, Ingredient ingredient) {
  Item? finalItem;
  switch (type) {
    case ItemTypes.weapon:
      finalItem = Item(
          weapon!.name + " de " + ingredient.name,
          ingredient.craftingType,
          [],
          weapon.slotsUsed,
          weapon.name,
          ingredient.price * weapon.costMultiplier,
          "${(weapon.damageMultiplier * ingredient.quality).ceil().toString()} "
          "+ ${weapon.forValue} + D${weapon.diceType}",
          (weapon.damageMultiplier * ingredient.quality).ceil().toInt(),
          weapon.forValue,
          weapon.diceType,
          weapon.range,
          null,
          null,
          null,
          weapon.skill);
      for (Characteristics characteristic in weapon.characteristics) {
        if (!finalItem.characteristics.contains(characteristic)) {
          finalItem.characteristics.add(characteristic);
        }
      }
      for (Characteristics characteristic in ingredient.characteristics) {
        if (!finalItem.characteristics.contains(characteristic)) {
          finalItem.characteristics.add(characteristic);
        }
      }
      break;
    case ItemTypes.armor:
      finalItem = Item(
          armor!.name + " de " + ingredient.name,
          ingredient.craftingType,
          [],
          armor.slotsUsed,
          armor.name,
          ingredient.price * armor.costMultiplier,
          null,
          null,
          null,
          null,
          null,
          armor.encumbrance,
          (armor.protectionMultiplier * ingredient.quality).ceil().toInt(),
          null,
          null);
      for (Characteristics characteristic in armor.characteristics) {
        if (!finalItem.characteristics.contains(characteristic)) {
          finalItem.characteristics.add(characteristic);
        }
      }
      for (Characteristics characteristic in ingredient.characteristics) {
        if (!finalItem.characteristics.contains(characteristic)) {
          finalItem.characteristics.add(characteristic);
        }
      }
      break;
    case ItemTypes.utility:
      finalItem = Item(
          utility!.name + " de " + ingredient.name,
          ingredient.craftingType,
          [],
          utility.slotsUsed,
          utility.name,
          ingredient.price * utility.costMultiplier,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          utility.functionality,
          utility.skill);
  }
  return finalItem!;
}
