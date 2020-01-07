import 'package:crew_brew/screens/wrapper.dart';
import 'package:crew_brew/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:crew_brew/models /user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthServices().user,
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}


  