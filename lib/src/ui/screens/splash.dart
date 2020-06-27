import 'dart:async';
import 'package:engage/src/ui/screens/home.dart';
import 'package:engage/src/ui/screens/login.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _setup();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }

  void _setup() async {
    Timer(Duration(seconds: 2), () async {
      if (await context.auth.isUserLoggedIn()) {
        context.navigator.navigateTo(HomeScreen());
      } else {
        context.navigator.navigateTo(LoginScreen());
      }
    });
  }
}
