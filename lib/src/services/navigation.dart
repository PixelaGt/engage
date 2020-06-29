import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationService {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  GlobalKey<NavigatorState> get navKey => _navigatorKey;

  Future<dynamic> navigateTo(Widget child, {bool replace = false}) {
    if (replace)
      return _navigatorKey.currentState.pushReplacement(MaterialPageRoute(
          builder: (context) => child, settings: RouteSettings()));
    else
      return _navigatorKey.currentState.push(MaterialPageRoute(
          builder: (context) => child, settings: RouteSettings()));
  }

  void back({dynamic result}) => _navigatorKey.currentState.pop(result);
}
