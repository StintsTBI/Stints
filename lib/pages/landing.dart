//https://drive.google.com/open?id=1FwiUFmW9gZYKsx0Lno0h9h3OtzDbdigi

import 'package:flutter/material.dart';
import 'package:stints/pages/signin.dart';
import 'package:stints/widgets/text_widgets.dart';
import 'package:stints/assets/constants.dart';

class LandingPage extends StatefulWidget {
  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30, right: 10),
            child: GestureDetector(
              child: SmallText(
                "Skip",
                color: WidgetColors.black,
              ),
              onTap: () {},
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50, left: (width - 241) / 2),
            child: Container(
              height: 70,
              width: 241,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/SastaTBI.png"))),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: Container(
              height: 45,
              width: 180,
              child: RaisedButton(
                color: Colors.white,
                shape: StadiumBorder(),
                child: SmallText("Login", color: WidgetColors.primaryColor),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 45,
              width: 180,
              child: RaisedButton(
                color: WidgetColors.primaryColor,
                shape: StadiumBorder(),
                child: SmallText("Signup", color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
          /* Padding(
            padding: EdgeInsets.only(top: 30, left: (width - 241) / 2),
            child: RaisedButton(
              color: Colors.white,
              elevation: 0.0,
              child: Container(
                  height: 45,
                  width: 180,
                  decoration: BoxDecoration(
                      color: WidgetColors.primaryColor,
                      borderRadius: BorderRadius.circular(22)),
                  child: Center(child: SmallText("Signup"))),
              onPressed: () {},
            ),
          ), */
        ],
      ),
    );
  }
}
