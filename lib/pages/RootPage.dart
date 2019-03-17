import 'package:flutter/material.dart';
import 'package:stints/pages/home.dart';
import 'package:stints/pages/landing.dart';
import 'package:stints/services/authentication.dart';

class MyInheritedWidget extends InheritedWidget {
  final VoidCallback _onSignedOut;
  MyInheritedWidget(this._onSignedOut, child) : super();
  static InheritedWidget of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(InheritedWidget);
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}

class RootPage extends StatefulWidget {
  RootPage({this.auth});

  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => new _RootPageState();
}

enum AuthStatus {
  NOT_DETERMINED,
  NOT_LOGGED_IN,
  LOGGED_IN,
}

class _RootPageState extends State<RootPage> {
  void _onSignedOut() {
    setState(() {
      authStatus = AuthStatus.NOT_LOGGED_IN;
      _userId = "";
    });
  }

  AuthStatus authStatus = AuthStatus.NOT_DETERMINED;
  String _userId = "";
  int t = 0;

  @override
  void initState() {
    super.initState();
    widget.auth.getCurrentUser().then((user) {
      setState(() {
        if (user != null) {
          _userId = user?.uid;
        }
        authStatus =
            user?.uid == null ? AuthStatus.NOT_LOGGED_IN : AuthStatus.LOGGED_IN;
      });
    });
  }

  void _onLoggedIn() {
    setState(() {
      authStatus = AuthStatus.LOGGED_IN;
    });
    widget.auth.getCurrentUser().then((user) {
      setState(() {
        _userId = user.uid.toString();
      });
    });
    Navigator.pop(context);
  }

  Widget _buildWaitingScreen() {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.NOT_DETERMINED:
        return LandingPage(
          auth: widget.auth,
          onSignedIn: _onLoggedIn,
        );
        break;
      case AuthStatus.NOT_LOGGED_IN:
        return LandingPage(
          auth: widget.auth,
          onSignedIn: _onLoggedIn,
        );
        break;
      case AuthStatus.LOGGED_IN:
        return HomePage();
        break;
      default:
        return _buildWaitingScreen();
    }
  }
}
