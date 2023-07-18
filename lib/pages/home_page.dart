import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List options = ["blabla", "blabla"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            for (String opt in options)
              ListTile(
                contentPadding: EdgeInsets.all(12),
                title: Text(opt),
                onTap: () {},
              )
          ],
        ),
      ),
    );
  }
}
