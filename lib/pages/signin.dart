import 'package:flutter/material.dart';
import 'package:stints/widgets/text_widgets.dart';
import 'package:stints/assets/constants.dart';

class SignIN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WidgetColors.primaryColor,
      body: Stack(
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
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 186, left: 36),
              child: Column(
                children: <Widget>[
                  NormalText(
                    "Email ID",
                    color: Colors.white.withOpacity(0.5),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
