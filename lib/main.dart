import 'package:engage/src/services/firestore.dart';
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
        Provider(
          create: (context) => AuthService(),
          lazy: true,
        ),
        Provider(
          create: (context) => _navigationService,
        ),
        Provider(
          create: (context) => FirestoreService(),
          lazy: true,
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: _navigationService.navKey,
        theme: ThemeData(
          primaryColor: Color(0xff00e3ee),
          accentColor: Color(0xffDC31E4),
          splashColor: Color(0xffDC31E4),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
