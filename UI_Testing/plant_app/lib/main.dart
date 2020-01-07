import 'package:flutter/material.dart';
import 'package:plant_app/screens/topPick.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[400],
        accentColor: Colors.greenAccent,
      ),
      home: TopPick(),
    );
  }
}

