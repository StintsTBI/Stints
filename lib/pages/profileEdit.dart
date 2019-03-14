import 'package:flutter/material.dart';
import 'package:stints/assets/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:stints/widgets/text_widgets.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEF4700),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 27, top: 27),
                  child: NormalText("Save", color: Colors.white),
                ),
              ),
              Column(
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                  color: WidgetColors.black,
                                  offset: Offset(0, 4),
                                  blurRadius: 4),
                            ],
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 20,
                      child: SmallText(
                        "Member since March 2019",
                        color: Colors.white.withOpacity(0.80),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 0,
                  right: 0,
                  bottom: 0,
                ),
                child: Container(
                    height: 700,
                    decoration: BoxDecoration(
                        color: WidgetColors.primaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 36, right: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SmallText("Username", color: Colors.white),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEF4700)),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Username",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SmallText("Bio", color: Colors.white),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(right: 6, left: 6, bottom: 10),
                            height: 125,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEF4700)),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              scrollPadding: EdgeInsets.all(5),
                              maxLines: 8,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Bio",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SmallText("Location", color: Colors.white),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEF4700)),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Address",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SmallText("Phone Number", color: Colors.white),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEF4700)),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Contact no.",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}