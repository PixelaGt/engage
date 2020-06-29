import 'package:animations/animations.dart';
import 'package:engage/src/data/profile.dart';
import 'package:engage/src/ui/screens/home.dart';
import 'package:engage/src/ui/screens/register.dart';
import 'package:engage/src/ui/widgets/login/login_base.dart';
import 'package:engage/src/ui/widgets/login/login_form.dart';
import 'package:engage/src/ui/widgets/login/login_header.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

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
          Align(
            alignment: Alignment.center,
            child: WebsafeSvg.asset('assets/svg/bg-decoration.svg',
                width: context.width),
          ),
          Column(
            children: [
              Expanded(
                child: LoginHeader(_anonymous),
              ),
              Expanded(
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
      context.loading();
      final user = await context.auth.loginWithGoogle();
      if (user != null) {
        final profile = await context.profile(user.uid);
        if (profile != null) {
          context.updateProfile(profile);
          context.hideLoading();
          context.navigate(HomeScreen(), replace: true);
        } else {
          context.hideLoading();
          context.navigate(RegisterScreen(user.uid),
              replace: true, type: SharedAxisTransitionType.horizontal);
        }
      }
    } catch (e) {
      context.hideLoading();
    }
  }

  void _anonymous() async {
    try {
      context.loading();
      final user = await context.auth.loginAnonymously();
      if (user != null) {
        context.updateProfile(random());
        context.hideLoading();
        context.navigate(HomeScreen(), replace: true);
      }
    } catch (e) {
      context.hideLoading();
    }
  }
}
