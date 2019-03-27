import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stints/assets/constants.dart';
import 'package:stints/pages/landing.dart';
import 'package:stints/pages/profileDetails.dart';
import 'package:stints/widgets/text_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatelessWidget {
  SharedPreferences prefs;
  String uid;
  @override
  Widget build(BuildContext context) {
    print("user id");
    //final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

    Future getstring() async {
      prefs = await SharedPreferences.getInstance();
      String uid = prefs.getString("uid");
    }

    double height = MediaQuery.of(context).size.height;

    final double heightcon = (height - 390) / 5;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getstring();
          print(uid);
        },
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 18),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: NormalText(
                      "Ashwin ram",
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: 50,
                      height: 4,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SmallText(
                      "Profile is 90% completed",
                      color: Colors.white.withOpacity(0.79),
                    ),
                  ),
                ],
              ),
              height: 400,
              width: double.infinity,
              color: WidgetColors.primaryColor,
            ),
            clipper: BottomWaveClipper(),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 390),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: heightcon,
                        width: double.infinity,
                        color: Color(0xffFFC107),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              getRow(
                                  "My Profile",
                                  Icon(Icons.account_circle,
                                      color: Colors.white)),
                              GestureDetector(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Container(
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Colors.white,
                                    )),
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      color: WidgetColors.primaryColor,
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (c) => ProfileDetails()));
                                },
                              )
                            ])),
                    Container(
                        height: heightcon,
                        width: double.infinity,
                        color: Color(0xffffca28),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              getRow(
                                  "Accademic details",
                                  Icon(Icons.insert_drive_file,
                                      color: Colors.white)),
                              GestureDetector(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Container(
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Colors.white,
                                    )),
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      color: WidgetColors.primaryColor,
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (c) => LandingPage()));
                                },
                              )
                            ])),
                    Container(
                        height: heightcon,
                        width: double.infinity,
                        color: Color(0xffFFD54F),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              getRow("Area of interest",
                                  Icon(Icons.dashboard, color: Colors.white)),
                              GestureDetector(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Container(
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Colors.white,
                                    )),
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      color: WidgetColors.primaryColor,
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (c) => LandingPage()));
                                },
                              )
                            ])),
                    Container(
                        height: heightcon,
                        width: double.infinity,
                        color: Color(0xffFFE082),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              getRow("Settings",
                                  Icon(Icons.settings, color: Colors.white)),
                              GestureDetector(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Container(
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Colors.white,
                                    )),
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      color: WidgetColors.primaryColor,
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (c) => LandingPage()));
                                },
                              )
                            ])),
                    Container(
                        height: heightcon,
                        width: double.infinity,
                        color: Color(0xffFFECB3),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              getRow(
                                  "Others",
                                  Icon(
                                    Icons.info,
                                    color: Colors.white,
                                  )),
                              GestureDetector(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Container(
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Colors.white,
                                    )),
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      color: WidgetColors.primaryColor,
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (c) => LandingPage()));
                                },
                              )
                            ])),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget getRow(String name, Icon ic) {
  return Padding(
    padding: EdgeInsets.only(left: 27),
    child: Container(
      child: Row(
        children: <Widget>[
          ic,
          SizedBox(
            width: 20,
          ),
          SmallText(name),
        ],
      ),
    ),
  );
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
