import 'package:flutter/material.dart';
import 'package:stints/assets/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:stints/pages/profileEdit.dart';
import 'package:stints/widgets/text_widgets.dart';

class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  Widget bookmark() {
    return Padding(
      padding: EdgeInsets.only(top: 30, right: 10, left: 10),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
      ),
    );
  }

  String bio =
      "However, it's not exactly a personal bio because it doesn't tell your full or life story. And no, your resume or CV should not incorporate your personal bio in full into it.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 36),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(right: 18, top: 36),
                  child: NormalText("Edit", color: WidgetColors.primaryColor),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => ProfileEdit()));
                },
              ),
            ],
          ),
          /* Positioned(
            top: 54,
            right: 54,
            child: GestureDetector(
              child: SmallText(
                "Edit",
                color: WidgetColors.primaryColor,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => ProfileEdit()));
              },
            ),
          ), */
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                color: WidgetColors.primaryColor,
              ),
              height: 300,
              padding: EdgeInsets.only(top: 80),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SmallText(
                        "Your Bookmarks",
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        child: SmallText(
                          "Next >>",
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          bookmark(),
                          bookmark(),
                          bookmark(),
                          bookmark()
                        ],
                      ))
                ],
              ),
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
                  height: 20,
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
                  height: 30,
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
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                            color: WidgetColors.black,
                            offset: Offset(0, 4),
                            blurRadius: 4),
                      ],
                      color: Color(0xffF4F4F4),
                      border: Border.all(
                          color: WidgetColors.primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 10,
                        child: Icon(
                          Icons.verified_user,
                          size: 30,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Complete Verification  ",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "1 step left>>",
                                    style: TextStyle(
                                        fontSize: 8,
                                        color: WidgetColors.primaryColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            width: 180,
                            child: AutoSizeText(
                                "complete user profile to get more access and unlimited use",
                                maxLines: 3,
                                style: TextStyle(fontSize: 10)),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          /*  */
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
