import 'package:engage/src/ui/screens/home.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: const Text('ANNONYMUS SIGN IN'),
              onPressed: _anonymous,
            ),
            RaisedButton(
              child: const Text('GOOGLE SIGN IN'),
              onPressed: _google,
            ),
          ],
        ),
      ),
    );
  }

  void _google() async {
    final user = await context.auth.loginWithGoogle();
    if (user != null) context.navigator.navigateTo(HomeScreen());
  }

  void _anonymous() async {
    final user = await context.auth.loginAnonymously();
    if (user != null) context.navigator.navigateTo(HomeScreen());
  }
}
