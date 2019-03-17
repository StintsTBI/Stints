import 'package:flutter/material.dart';
import 'package:stints/pages/RootPage.dart';
import 'package:stints/services/authentication.dart';
import 'package:stints/assets/constants.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(primaryColor: WidgetColors.primaryColor),
        debugShowCheckedModeBanner: false,
        home: new RootPage(auth: new Auth()));
  }
  /* String _email = "ramashwin36@gmail.com", _password = "Tanjore613004";

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future signUp(String email, String password) async {
    FirebaseUser user;
    final ref = FirebaseDatabase.instance.reference();

    try {
      user = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((FirebaseUser user1) {
        _firebaseAuth.sendPasswordResetEmail(email: _email);
      });
    } catch (e) {
      print("error " + e.toString());
    }
  } */

}
