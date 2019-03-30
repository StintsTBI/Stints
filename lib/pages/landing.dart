//https://drive.google.com/open?id=1FwiUFmW9gZYKsx0Lno0h9h3OtzDbdigi

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stints/pages/SignUp.dart';
import 'package:stints/pages/signin.dart';
import 'package:stints/services/authentication.dart';
import 'package:stints/widgets/text_widgets.dart';
import 'package:stints/assets/constants.dart';
import 'home.dart';

class LandingPage extends StatefulWidget {
  LandingPage({this.auth, this.onSignedIn});
  final BaseAuth auth;
  final VoidCallback onSignedIn;
  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    //double height = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              actions: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 36, right: 36),
                    child: GestureDetector(
                      child: SmallText(
                        "Skip",
                        color: WidgetColors.black,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (c) => HomePage()));
                      },
                    ),
                  ),
                )
              ],
            ),
            body: ListView(
              children: <Widget>[
                Stack(
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
                          padding: EdgeInsets.only(top: 100),
                          child: Center(
                            child: Container(
                              height: 70,
                              width: 241,
                              child: Image.network(
                                  "http://www.sastratbi.in/wp-content/uploads/2018/11/cropped-FIRSTTBILogo-e1542947871773.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: Container(
                            height: 45,
                            width: 180,
                            child: OutlineButton(
                              borderSide:
                                  BorderSide(color: WidgetColors.primaryColor),
                              color: Colors.white,
                              shape: StadiumBorder(),
                              highlightColor: WidgetColors.primaryColor,
                              highlightedBorderColor: WidgetColors.primaryColor,
                              splashColor: WidgetColors.secondaryColor,
                              child:
                                  SmallText("Login", color: WidgetColors.black),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (c) => SignIn(
                                          auth: widget.auth,
                                          onSignedIn: widget.onSignedIn,
                                        )));
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
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (c) => SignUp(
                                          auth: widget.auth,
                                          onSignedIn: widget.onSignedIn,
                                        )));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 72, right: 72),
                        child: GestureDetector(
                          child: SmallTextTab(
                            "Skip",
                            color: WidgetColors.black,
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (c) => HomePage()));
                          },
                        ),
                      ),
                    ),

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
                          padding: EdgeInsets.only(top: 300),
                          child: Center(
                            child: Container(
                              height: 140,
                              width: 481,
                              child: Image.network(
                                  "http://www.sastratbi.in/wp-content/uploads/2018/11/cropped-FIRSTTBILogo-e1542947871773.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: Container(
                            height: 90,
                            width: 360,
                            child: OutlineButton(
                              borderSide:
                                  BorderSide(color: WidgetColors.primaryColor),
                              color: Colors.white,
                              shape: StadiumBorder(),
                              highlightColor: WidgetColors.primaryColor,
                              highlightedBorderColor: WidgetColors.primaryColor,
                              splashColor: WidgetColors.secondaryColor,
                              child: SmallTextTab("Login",
                                  color: WidgetColors.black),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (c) => SignIn(
                                          auth: widget.auth,
                                          onSignedIn: widget.onSignedIn,
                                        )));
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
                            width: 360,
                            child: RaisedButton(
                              color: WidgetColors.primaryColor,
                              shape: StadiumBorder(),
                              child:
                                  SmallTextTab("Signup", color: Colors.white),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (c) => SignUp(
                                          auth: widget.auth,
                                          onSignedIn: widget.onSignedIn,
                                        )));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
