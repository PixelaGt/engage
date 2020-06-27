import 'package:engage/src/services/navigation.dart';
import 'package:engage/src/services/session.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

extension ServicesExtension on BuildContext {
  AuthService get auth => this.read<AuthService>();
  NavigationService get navigator => this.read<NavigationService>();
}
