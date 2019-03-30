import 'package:flutter/material.dart';
import 'package:stints/assets/constants.dart';
import 'package:stints/pages/profile.dart';
import 'package:stints/pages/profileEdit.dart';
import 'package:stints/widgets/text_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeDrawer extends StatelessWidget {
  final VoidCallback signout;
  HomeDrawer({this.signout});
  @override
  Widget build(BuildContext context) {
    var shortestside = MediaQuery.of(context).size.shortestSide;
    return Drawer(
      child: LayoutBuilder(
        builder: (context, constrains) {
          return Container(
            // height: MediaQuery.of(context).size.height,
            child: ListView(
              children: <Widget>[
                Container(
                  color: Color(0xffEE4801).withOpacity(1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: shortestside < 600 ? 128 : 200,
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
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                          ),
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (c) => Profile()));
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
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Icon(Icons.edit, size: 14),
                                            ),
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (c) =>
                                                          ProfileEdit()));
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
                                      minFontSize: shortestside < 600 ? 18 : 25,
                                    ),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Container(
                                      height: 18,
                                      width: shortestside < 600 ? 60 : 100,
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
                                          minFontSize:
                                              shortestside < 600 ? 12 : 18,
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
                              child: shortestside < 600
                                  ? side("Home")
                                  : sideTab("Home")),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: shortestside < 600
                                ? side("Bookmarks")
                                : sideTab("Bookmarks"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: shortestside < 600
                                ? side("Settings")
                                : sideTab("Settings"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: shortestside < 600
                                ? side("Contact us")
                                : sideTab("Contact us"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: shortestside < 600
                                ? side("About")
                                : sideTab("About"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
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
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: shortestside < 600 ? 12 : 18),
                            ),
                            GestureDetector(
                              child: Text(
                                "Logout",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: shortestside < 600 ? 12 : 18),
                              ),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: SmallText(
                                            "Do you really wanna logout?"),
                                        title: NormalText(
                                          "Logout",
                                          color: Colors.black,
                                        ),
                                        titleTextStyle: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        actions: <Widget>[
                                          OutlineButton(
                                            splashColor:
                                                WidgetColors.primaryColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12))),
                                            child: Text(
                                              "STAY",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            borderSide: BorderSide(
                                                color:
                                                    WidgetColors.primaryColor),
                                          ),
                                          RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(12))),
                                              color: WidgetColors.primaryColor,
                                              child: Text(
                                                "SIGN OUT",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              onPressed: signout),
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
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget side(String heading) {
  return Container(
      padding: EdgeInsets.only(left: 18, top: 14),
      color: WidgetColors.primaryDark,
      height: 47,
      width: double.infinity,
      child: SmallText(
        heading,
        color: Colors.white,
      ));
}

Widget sideTab(String heading) {
  return Container(
    padding: EdgeInsets.only(left: 18, top: 14),
    color: WidgetColors.primaryDark,
    height: 60,
    width: double.infinity,
    child: SmallTextTab(
      heading,
      color: Colors.white,
    ),
  );
}
