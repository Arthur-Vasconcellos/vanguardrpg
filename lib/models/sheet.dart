
import 'package:lista_de_tarefas/models/attributes.dart';
import 'package:lista_de_tarefas/models/skill.dart';

import 'weaponModel.dart';

class Sheet {
   var attributes = Attributes();
   List<Skill> skills = [];
   List<WeaponModel> inventory = [];
   var damageDebuff = 0;
   List<Skill> studies = [];
   var generalDebuff = 0;
   var blockAbility = 0;
   var parryAbility = 0;
   var dodgeAbility = 0;
}