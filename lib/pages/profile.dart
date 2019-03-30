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
    var short = MediaQuery.of(context).size.shortestSide;
    bool select = short < 600;
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
                    height: select == true ? 80 : 160,
                    width: select == true ? 80 : 160,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(
                          select == true ? 40 : 80,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: select == true
                        ? NormalText(
                            "Ashwin ram",
                            color: Colors.white,
                          )
                        : NormalTextTab(
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
                    child: select == true
                        ? SmallText(
                            "Profile is 90% completed",
                            color: Colors.white.withOpacity(0.79),
                          )
                        : SmallTextTab(
                            "Profile is 90% completed",
                            color: Colors.white.withOpacity(0.79),
                          ),
                  ),
                ],
              ),
              height: select == true ? 400 : 600,
              width: double.infinity,
              color: WidgetColors.primaryColor,
            ),
            clipper: BottomWaveClipper(),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: select == true ? 400 : 600),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: heightcon,
                        width: double.infinity,
                        color: Color(0xffFFC107),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              select == true
                                  ? getRow(
                                      "My Profile",
                                      Icon(Icons.account_circle,
                                          color: Colors.white))
                                  : getRowTab(
                                      "My Profile",
                                      Icon(Icons.account_circle,
                                          size: 50, color: Colors.white)),
                              GestureDetector(
                                child: getIcon(select == true ? 15 : 30,
                                    select == true ? 34 : 68),
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
                              select == true
                                  ? getRow(
                                      "Accademic details",
                                      Icon(Icons.account_circle,
                                          color: Colors.white))
                                  : getRowTab(
                                      "Accademic details",
                                      Icon(Icons.school,
                                          size: 50, color: Colors.white)),
                              GestureDetector(
                                child: getIcon(select == true ? 15 : 30,
                                    select == true ? 34 : 68),
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
                              select == true
                                  ? getRow(
                                      "Area of intrest",
                                      Icon(Icons.account_circle,
                                          color: Colors.white))
                                  : getRowTab(
                                      "Area of intrest",
                                      Icon(Icons.drafts,
                                          size: 50, color: Colors.white)),
                              GestureDetector(
                                child: getIcon(select == true ? 15 : 30,
                                    select == true ? 34 : 68),
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
                              select == true
                                  ? getRow(
                                      "Settings",
                                      Icon(Icons.account_circle,
                                          color: Colors.white))
                                  : getRowTab(
                                      "Settings",
                                      Icon(Icons.settings,
                                          size: 50, color: Colors.white)),
                              GestureDetector(
                                child: getIcon(select == true ? 15 : 30,
                                    select == true ? 34 : 68),
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
                              select == true
                                  ? getRow(
                                      "Others",
                                      Icon(Icons.account_circle,
                                          color: Colors.white))
                                  : getRowTab(
                                      "Others",
                                      Icon(Icons.warning,
                                          size: 50, color: Colors.white)),
                              GestureDetector(
                                child: getIcon(select == true ? 15 : 30,
                                    select == true ? 34 : 68),
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

Widget getIcon(double s, double side) {
  return Padding(
    padding: EdgeInsets.only(right: side == 34 ? 15 : 30),
    child: Container(
      child: Center(
          child: Icon(
        Icons.arrow_forward_ios,
        size: s,
        color: Colors.white,
      )),
      height: side,
      width: side,
      decoration: BoxDecoration(
        color: WidgetColors.primaryColor,
        borderRadius: BorderRadius.circular(side == 34 ? 17 : 34),
      ),
    ),
  );
}

Widget getRowTab(String name, Icon ic) {
  return Padding(
    padding: EdgeInsets.only(left: 27),
    child: Container(
      child: Row(
        children: <Widget>[
          ic,
          SizedBox(
            width: 40,
          ),
          SmallTextTab(name),
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
