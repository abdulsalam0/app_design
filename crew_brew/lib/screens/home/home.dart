import 'package:crew_brew/service/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.brown[50],  
    appBar: AppBar(
      title: Text("home Page"),
      backgroundColor: Colors.brown[400],
      elevation: 0.0,
      actions: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.exit_to_app),
          label: Text("logOut"),
          onPressed: () async {
            await _auth.signOut();
          },
        )
      ],
      ),
    );
  }
}