import 'package:crew_brew/models%20/user.dart';
import 'package:crew_brew/screens/authenticate/authenticate.dart';
import 'package:crew_brew/screens/authenticate/sign_in.dart';
import 'package:crew_brew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //print(user);
    // either returns home or authenticate depending on the sign in status
    return user == null ? Authenticate(): Home();
  }
}