import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  TestPage( testPage, {Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPage();
}

class _TestPage extends State<TestPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello"),
    );
  }
}