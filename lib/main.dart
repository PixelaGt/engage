import 'package:engage/src/services/navigation.dart';
import 'package:engage/src/services/session.dart';
import 'package:engage/src/ui/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(EngageApp());
}

class EngageApp extends StatelessWidget {
  final _navigationService = NavigationService();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => AuthService()),
        Provider(create: (context) => _navigationService),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: _navigationService.navKey,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
