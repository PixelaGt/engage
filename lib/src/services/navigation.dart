import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationService {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  GlobalKey<NavigatorState> get navKey => _navigatorKey;

  Future<dynamic> navigateTo(Widget child,
      {bool replace = false,
      SharedAxisTransitionType type = SharedAxisTransitionType.scaled}) {
    if (replace)
      return _navigatorKey.currentState.pushReplacement(
          _scaleNavigation(screen: child, routeName: '', transitionType: type));
    else
      return _navigatorKey.currentState.push(
          _scaleNavigation(screen: child, routeName: '', transitionType: type));
  }

  void back({dynamic result}) => _navigatorKey.currentState.pop(result);

  PageRoute _scaleNavigation(
          {@required Widget screen,
          @required String routeName,
          SharedAxisTransitionType transitionType =
              SharedAxisTransitionType.scaled}) =>
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => screen,
          settings: RouteSettings(name: routeName),
          maintainState: true,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SharedAxisTransition(
                  animation: animation,
                  fillColor: Color(0xff020526),
                  secondaryAnimation: secondaryAnimation,
                  transitionType: transitionType,
                  child: child));
}
