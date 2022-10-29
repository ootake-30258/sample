import 'package:flutter/material.dart';

import 'widget_management/firstPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterDemo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SecondPage(),
    );
  }
}

