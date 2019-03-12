import 'package:flutter/material.dart';
import 'package:stints/pages/landing.dart';

import 'package:stints/widgets/text_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Quicksand"),
      home: Scaffold(
        body: LandingPage(),
      ),
    );
  }
}
