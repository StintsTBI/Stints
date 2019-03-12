//https://drive.google.com/open?id=1FwiUFmW9gZYKsx0Lno0h9h3OtzDbdigi

import 'package:flutter/material.dart';
import 'package:stints/pages/profile.dart';
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
      backgroundColor: Colors.white,
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
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Profile()));
              },
            ),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          /* Positioned(
            bottom: 0,
            child: Container(
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.red, Color(0xEEF44336)],
                    [Colors.red[800], Color(0x77E57373)],
                    [Colors.orange, Color(0x66FF9800)],
                    [Colors.yellow, Color(0x55FFEB3B)]
                  ],
                  durations: [35000, 19440, 10800, 6000],
                  heightPercentages: [0.20, 0.23, 0.25, 0.30],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),
                colors: [
                  Colors.white70,
                  Colors.white54,
                  Colors.white30,
                  Colors.white24,
                ],
                durations: [
                  32000,
                  21000,
                  18000,
                  5000,
                ],
                waveAmplitude: 0,
                heightPercentages: [0.25, 0.26, 0.28, 0.31],
                backgroundColor: Colors.blue,
                size: Size(width, width)
              ),
            ),
          ), */
          Column(
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
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => SignIn()));
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
                  width: 180,
                  child: RaisedButton(
                    color: WidgetColors.primaryColor,
                    shape: StadiumBorder(),
                    child: SmallText("Signup", color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
