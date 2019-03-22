import 'package:flutter/material.dart';
import 'package:stints/assets/constants.dart';
import 'package:stints/pages/homeDrawer.dart';

class HomePage extends StatefulWidget {
  final VoidCallback signout;
  HomePage({this.signout});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double small = 600;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
        ),
        drawer: HomeDrawer(signout: widget.signout),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: WidgetColors.primaryColor,
        ),
      ),
    );
  }
}
