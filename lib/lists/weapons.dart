import 'package:lista_de_tarefas/lists/enums.dart';

import '../models/weaponModel.dart';
List<WeaponModel> Weapons = [
WeaponModel("Adaga", 1, 0.25, "FOR", 4, 0, 1, [CraftingTypes.forgery, CraftingTypes.ceramics], [Characteristics.attacksAtZeroRange, Characteristics.concealBonus], Skills.dagger),
WeaponModel("Gládio", 2, 0.33, "FOR", 4, 1, 1, [CraftingTypes.forgery], [Characteristics.attacksAtZeroRange], Skills.oneHandedSword),
WeaponModel("Machado de Duas Mãos", 5, 0.66, "2 FOR", 8, 2, 2, [CraftingTypes.forgery], [Characteristics.twoHanded, Characteristics.doubleDamageShields], Skills.twoHandedAxe)
];

