import 'package:flutter/material.dart';
import 'package:stints/assets/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:stints/widgets/text_widgets.dart';

class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  String bio =
      "However, it's not exactly a personal bio because it doesn't tell your full or life story. And no, your resume or CV should not incorporate your personal bio in full into it.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 54,
            right: 54,
            child: SmallText(
              "Edit",
              color: WidgetColors.primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: WidgetColors.primaryColor, width: 3),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: NormalText("Ashwin Ram"),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 27, right: 27),
                  child: AutoSizeText(
                    bio,
                    style: TextStyle(color: Colors.black.withOpacity(0.80)),
                    minFontSize: 14,
                    maxFontSize: 18,
                    maxLines: 4,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    infor("College/University", "Sastra University"),
                    infor("Location", "Tanjore"),
                    infor("Member Since", "December 2017"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      border: Border.all(
                          color: WidgetColors.primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  height: 80,
                  width: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[],
                  ),
                )
              ],
            ),
          ),
          /* Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              height: 350,
              color: Color(0xffFF9D74),
            ),
          ) */
        ],
      ),
    );
  }

  Widget infor(String title, String name) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 14, color: WidgetColors.primaryColor),
        ),
        Text(name, style: TextStyle(fontSize: 12))
      ],
    );
  }
}
