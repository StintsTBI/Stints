import 'package:flutter/material.dart';
import 'package:stints/assets/constants.dart';
import 'package:stints/pages/profileDetails.dart';
import 'package:stints/pages/profileEdit.dart';
import 'package:stints/widgets/text_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeDrawer extends StatelessWidget {
  final VoidCallback signout;
  HomeDrawer({this.signout});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffEE4801).withOpacity(1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 128,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: WidgetColors.primaryDark,
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ],
                      color: WidgetColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: GestureDetector(
                          child: Stack(
                            children: <Widget>[
                              GestureDetector(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      boxShadow: [
                                        new BoxShadow(
                                            color: WidgetColors.black,
                                            offset: Offset(0, 4),
                                            blurRadius: 4),
                                      ],
                                      borderRadius: BorderRadius.circular(40)),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (c) => ProfileDetails()));
                                },
                              ),
                              Positioned(
                                height: 20,
                                width: 20,
                                bottom: 0,
                                right: 0,
                                child: GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(Icons.edit, size: 14),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (c) => ProfileEdit()));
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          AutoSizeText(
                            "Seshan Suresh",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            minFontSize: 18,
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            height: 18,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: AutoSizeText(
                                "Student",
                                style: TextStyle(
                                    color: WidgetColors.black,
                                    fontWeight: FontWeight.bold),
                                minFontSize: 12,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: double.infinity,
                    child: SmallText(
                      "Home",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: double.infinity,
                    child: SmallText(
                      "Bookmarks",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: double.infinity,
                    child: SmallText(
                      "Settings",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: double.infinity,
                    child: SmallText(
                      "Contact us",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: double.infinity,
                    child: SmallText(
                      "About",
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 31,
                    width: 95,
                    child: Image.network(
                        "http://www.sastratbi.in/wp-content/uploads/2018/11/cropped-FIRSTTBILogo-e1542947871773.png"),
                  ),
                  Text(
                    "Feedback",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 12),
                  ),
                  GestureDetector(
                    child: Text(
                      "Logout",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 12),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: SmallText("Do you really wanna logout?"),
                              title: NormalText(
                                "Logout",
                                color: Colors.black,
                              ),
                              titleTextStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              actions: <Widget>[
                                OutlineButton(
                                  splashColor: WidgetColors.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  child: Text(
                                    "STAY",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  borderSide: BorderSide(
                                      color: WidgetColors.primaryColor),
                                ),
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  color: WidgetColors.primaryColor,
                                  child: Text(
                                    "SIGN OUT",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: signout,
                                ),
                              ],
                            );
                          });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
