import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stints/pages/home.dart';
import 'package:stints/services/authentication.dart';
import 'package:stints/widgets/text_widgets.dart';
import 'package:stints/assets/constants.dart';
import 'auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  final BaseAuth auth;
  final VoidCallback onSignedIn;
  SignIn({this.auth, this.onSignedIn});
  @override
  SignINstate createState() => SignINstate();
}

class SignINstate extends State<SignIn> {
  SharedPreferences prefs;
  String _email, _password;
  String userId = "";

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    void sigin() async {
      print("ture");
      String userId = await widget.auth.signIn(_email, _password);
      prefs = await SharedPreferences.getInstance();

      prefs.setString("uid", userId);
      prefs.setString("SigninType", "GoogleSignin");
      widget.onSignedIn();
      if (userId != null) {
        handleNewUser();
      } else {
        handleOldUser();
      }

      print("user:" + userId);
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Scaffold(
            resizeToAvoidBottomPadding: false,
            backgroundColor: WidgetColors.primaryColor,
            body: Hero(
              tag: "Login",
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 36, left: 36),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Heading(
                        "Login",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50, right: 20),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        child: Icon(
                          Icons.close,
                          size: 24,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 186, left: 36, right: 36),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          NormalText(
                            "Email ID",
                            color: Colors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEF4700)),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Email address",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                ),
                              ),
                              onChanged: (value) => _email = value,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          NormalText(
                            "Password",
                            color: Colors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEF4700)),
                            child: TextField(
                              obscureText: _obscureText,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "password",
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.5)),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.black,
                                    ),
                                  )),
                              onChanged: (value) => _password = value,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              height: 45,
                              width: 145,
                              child: OutlineButton(
                                highlightedBorderColor: Colors.white,
                                shape: StadiumBorder(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Sign in via",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(Icons.home)
                                  ],
                                ),
                                onPressed: () {
                                  Future<FirebaseUser> user = handleSignIn();

                                  /*  if (user != null) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (c) => HomePage()));
                            } */
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              height: 45,
                              width: 145,
                              child: RaisedButton(
                                color: Colors.white,
                                shape: StadiumBorder(),
                                child: SmallText("Login",
                                    color: WidgetColors.primaryColor),
                                onPressed: () {
                                  sigin();
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: GestureDetector(
                              child: Text(
                                'Reset Password',
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onTap: () {},
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            resizeToAvoidBottomPadding: false,
            backgroundColor: WidgetColors.primaryColor,
            body: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 72, left: 72),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: HeadingTab(
                      "Login",
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 72, right: 72),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      child: Icon(
                        Icons.close,
                        size: 48,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 372, left: 72, right: 72),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        NormalTextTab(
                          "Email ID",
                          color: Colors.white.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffEF4700)),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Email address",
                              hintStyle: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white.withOpacity(0.5)),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Colors.white,
                              ),
                            ),
                            onChanged: (value) => _email = value,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        NormalTextTab(
                          "Password",
                          color: Colors.white.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffEF4700)),
                          child: Center(
                            child: TextField(
                              obscureText: _obscureText,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "password",
                                  hintStyle: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white.withOpacity(0.5)),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.black,
                                    ),
                                  )),
                              onChanged: (value) => _password = value,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: Container(
                            height: 90,
                            width: 290,
                            child: OutlineButton(
                              highlightedBorderColor: Colors.white,
                              shape: StadiumBorder(),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Sign in via",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  Icon(Icons.home)
                                ],
                              ),
                              onPressed: () {
                                Future<FirebaseUser> user = handleSignIn();

                                /*  if (user != null) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (c) => HomePage()));
                          } */
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: Container(
                            height: 90,
                            width: 290,
                            child: RaisedButton(
                              color: Colors.white,
                              shape: StadiumBorder(),
                              child: SmallTextTab("Login",
                                  color: WidgetColors.primaryColor),
                              onPressed: () {
                                sigin();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: GestureDetector(
                            child: Text(
                              'Reset Password',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onTap: () {},
                          ),
                        )
                      ],
                    )),
              ],
            ),
          );
        }
      },
    );
  }

  void handleNewUser() {
    Map<String, dynamic> map = {
      "email": _email,
      "password": _password,
      //"photourl": user.photoUrl
    };

    databaseReference.child("users/${user.uid}/").update(map);
    print("new user");
  }

  void handleOldUser() {
    print("Old user");
  }
}
