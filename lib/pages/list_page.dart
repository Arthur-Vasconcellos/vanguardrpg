// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lista_de_tarefas/lists/enums.dart';
import 'package:lista_de_tarefas/lists/weapons.dart';
import 'package:lista_de_tarefas/models/ingredient.dart';
import 'package:lista_de_tarefas/pages/test_page.dart';

import '../models/weaponModel.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final TextEditingController todoController = TextEditingController();
  Ingredient ingredient = Ingredient("Aço", 12, 20, 1, 360, CraftingTypes.forgery, []);
  var fullText = "";

  List<String> todos = [];

  get testPage => null;
  String textConvert(arma){
    List localAtts = [];
    for(Enum effect in arma.characteristics){
      if(!localAtts.contains(effect)) {
        localAtts.add(effect);
      }
    }
    for(Enum effect in ingredient.characteristics){
      if(!localAtts.contains(effect)) {
        localAtts.add(effect);
      }
    }
    final texto = "Nome: ${arma.name} de ${ingredient.name}\n"
            "Dano: ${(arma.damageMultiplier * ingredient.quality).ceil().toString()} "
            "+ ${arma.forValue} + D${arma.diceType}\n"
            "Alcance: ${arma.range}\n"
            "Características:\n${localAtts.join("\n")}\n"
            "Preço: ${arma.costMultiplier * ingredient.price}";

    fullText = "$fullText\n\n$texto";
    return texto;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: todoController,
                      decoration: InputDecoration(
                        labelText: 'Add Task',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: fullText));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, fixedSize: Size(50, 50)),
                      child: Text('+'))
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                child: Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (WeaponModel arma in Weapons)
                      ListTile(
                          title: SelectableText(
                              textConvert(arma)
                          ),
                          onTap: () async {
                          await Clipboard.setData(ClipboardData(text: ""));
                          // copied successfully
                          },)

                  ],
                ),
              ),),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(child: Text('voce possui 0 tarefas pendentes')),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return TestPage(testPage);
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: Text('limpar tudo'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
