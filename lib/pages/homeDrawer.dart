import 'package:flutter/material.dart';
import 'package:stints/assets/constants.dart';
import 'package:stints/pages/RootPage.dart';
import 'package:stints/widgets/text_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final myInheritedWidget = MyInheritedWidget.of(context);
    //VoidCallback signout = myInheritedWidget.of(context)._onSignedOut;
    return Container(
      color: Color(0xffEE4801).withOpacity(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 128,
                width: 250,
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
                      onTap: () {},
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        AutoSizeText(
                          "Seshan Suresh",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: 250,
                    child: SmallText(
                      "Home",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: 250,
                    child: SmallText(
                      "Bookmarks",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: 250,
                    child: SmallText(
                      "Settings",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: 250,
                    child: SmallText(
                      "Contact us",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 18, top: 14),
                    color: WidgetColors.primaryDark,
                    height: 47,
                    width: 250,
                    child: SmallText(
                      "About",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
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
                        return Container(
                          child: AlertDialog(
                            title: SmallText("Are you sure?"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("STAY"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text("SIGN OUT"),
                              ),
                            ],
                          ),
                        );
                      });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}