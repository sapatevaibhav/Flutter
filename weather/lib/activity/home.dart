// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map info = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text("Home page")),
      body: Column(
        children: <Widget>[
          FloatingActionButton(onPressed: () => () {}),
          Text(info["desc"]),
        ],
      ),
    );
  }
}
