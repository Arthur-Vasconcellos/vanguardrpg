import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/pages/home_page.dart';
import 'package:lista_de_tarefas/pages/list_page.dart';
import 'package:lista_de_tarefas/pages/sheet_page.dart';

void main (){
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: ListPage(),
    );
  }
}

