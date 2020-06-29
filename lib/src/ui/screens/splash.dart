import 'dart:async';
import 'package:animations/animations.dart';
import 'package:engage/src/ui/screens/home.dart';
import 'package:engage/src/ui/screens/login.dart';
import 'package:engage/src/ui/widgets/home/home_base.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

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
    return HomeBase([
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Expanded(
                  child: Container(
                width: context.width * 0.4,
                height: context.width * 0.4,
                child: FlareActor("assets/flare/Engage.flr",
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    animation: "diffused"),
              )),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 16.0, left: 32.0, right: 32.0),
                child: WebsafeSvg.asset(
                  'assets/svg/bottom-decoration.svg',
                  width: context.width,
                ),
              )
            ],
          )

          // body: Stack(
          //   children: [
          //     Align(
          //         alignment: Alignment.center,
          //         child: Container(
          //           width: context.width * 0.4,
          //           height: context.width * 0.4,
          //           child: FlareActor("assets/flare/Engage.flr",
          //               alignment: Alignment.center,
          //               fit: BoxFit.contain,
          //               animation: "diffused"),
          //         )),
          //     Align(
          //       alignment: Alignment.bottomCenter,
          //       child: Padding(
          //         padding: const EdgeInsets.only(
          //             bottom: 16.0, left: 32.0, right: 32.0),
          //         child: WebsafeSvg.asset(
          //           'assets/svg/bottom-decoration.svg',
          //           width: context.width,
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          )
    ]);
  }

  void _setup() async {
    Timer(Duration(seconds: 3), () async {
      if (await context.auth.isUserLoggedIn()) {
        context.navigator.navigateTo(HomeScreen(), replace: true);
      } else {
        context.navigator.navigateTo(LoginScreen(),
            replace: true, type: SharedAxisTransitionType.horizontal);
      }
    });
  }
}
