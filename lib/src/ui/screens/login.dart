import 'package:engage/src/data/profile.dart';
import 'package:engage/src/ui/screens/home.dart';
import 'package:engage/src/ui/screens/register.dart';
import 'package:engage/src/ui/widgets/login/login_base.dart';
import 'package:engage/src/ui/widgets/login/login_form.dart';
import 'package:engage/src/ui/widgets/login/login_header.dart';
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
      body: LoginBase(
        [
          Column(
            children: [
              Expanded(
                child: LoginHeader(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: LoginForm(_anonymous, _google),
              )
            ],
          )
        ],
      ),
    );
  }

  void _google() async {
    try {
      final user = await context.auth.loginWithGoogle();
      if (user != null) {
        final profile = await context.profile(user.uid);
        if (profile != null) {
          context.updateProfile(profile);
          context.navigate(HomeScreen());
        } else {
          context.navigate(RegisterScreen(user.uid));
        }
      }
    } catch (e) {}
  }

  void _anonymous() async {
    try {
      final user = await context.auth.loginAnonymously();
      if (user != null) {
        context.updateProfile(random());
        context.navigate(HomeScreen());
      }
    } catch (e) {}
  }
}
