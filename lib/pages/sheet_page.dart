import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/lists/enums.dart';
import 'package:lista_de_tarefas/models/sheet.dart';

import '../models/weaponModel.dart';

class SheetPage extends StatefulWidget {
  const SheetPage({Key? key}) : super(key: key);

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  var sheet = Sheet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Expanded(
          child: Column(
        children: [
          SizedBox(
              height: 100,
              child: Row(
              children: [
                Text("FOR: ${sheet.attributes.fort}"),
                Column(
                  children: [
                    Container(
                      height: 30,
                      width: 40,
                      child: ElevatedButton(
                          onPressed: (){updateAttribute(Attributes.fort, true);},
                          child: Icon(Icons.exposure_plus_1, size: 20)),
                    ),
                    Container(
                      height: 30,
                      width: 40,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Icon(Icons.exposure_minus_1, size: 20)),
                    )
                  ],
                )
              ],
            )
          ),
          SizedBox(
              height: 40,
              child: Row(
                children: [
                  Text("PF: ${sheet.attributes.pf}"),
                ],
              )
          ),
          SizedBox(
            height: 40,
              child: Row(
                children: [
                  Text("HM: ${sheet.attributes.hm}"),
                ],
              )
          ),
          SizedBox(
              height: 40,
              child: Row(
                children: [
                  Text("MEN: ${sheet.attributes.men}"),
                ],
              )
          )
        ],
      )),
          Expanded(child: ListView(
            children: [
              for (WeaponModel item in sheet.inventory)
                Row(
                ),
              Row(
                children: [
                  SizedBox(
                height: 400,
    width: 400,
                )

    ],
              )
            ],
          ))
    ])
    );
  }
  void updateAttribute(Enum attribute, bool increase){
    switch(attribute){
      case Attributes.fort:
      if(increase){
        sheet.attributes.fort+=1;
      } else {
        sheet.attributes.fort-=1;
      }
        break;
      case Attributes.pf:
        if(increase){
          sheet.attributes.pf+=1;
        } else {
          sheet.attributes.pf-=1;
        }
        break;
      case Attributes.hm:
        if(increase){
          sheet.attributes.hm+=1;
        } else {
          sheet.attributes.hm-=1;
        }
        break;
      case Attributes.men:
        if(increase){
          sheet.attributes.men+=1;
        } else {
          sheet.attributes.men-=1;
        }
        break;
    }
    setState(() {
    });
  }
}
