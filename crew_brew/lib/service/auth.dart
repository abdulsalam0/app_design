import 'package:crew_brew/models%20/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices{

  // making an instance to get access to the methods
  final FirebaseAuth _auth = FirebaseAuth.instance;

 //creating new user object depending on the uid form the FirebaseUser 
  User _userfromFirebaseUser(FirebaseUser user){
    // if user is not null return uid else return null
    return user != null ? User(uid: user.uid) : null;
  }
  Stream<User> get user{
    return _auth.onAuthStateChanged
    .map(_userfromFirebaseUser);
  }
  //sign in anon
  Future signInAnon() async {
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userfromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with username and password


  //sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.tosrting());
      return null;
    }
  }



  //reguster with username and password 

}