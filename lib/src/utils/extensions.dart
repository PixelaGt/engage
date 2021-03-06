import 'package:animations/animations.dart';
import 'package:engage/src/data/profile.dart';
import 'package:engage/src/services/firestore.dart';
import 'package:engage/src/services/loader.dart';
import 'package:engage/src/services/navigation.dart';
import 'package:engage/src/services/session.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

extension ServicesExtension on BuildContext {
  AuthService get auth => this.read<AuthService>();
  FirestoreService get store => this.read<FirestoreService>();
  NavigationService get navigator => this.read<NavigationService>();

  ///Utilities
  Future<Profile> profile(String id) => this.store.getProfile(id);
  Future<dynamic> navigate(Widget child,
          {bool replace = false,
          SharedAxisTransitionType type = SharedAxisTransitionType.scaled}) =>
      this.navigator.navigateTo(child, replace: replace, type: type);
  void updateProfile(Profile profile) => this.auth.updateProfile(profile);
}

extension ScreenExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  void loading() => Provider.of<Loader>(this, listen: false).showLoader(this);
  void hideLoading() =>
      Provider.of<Loader>(this, listen: false).hideLoader(this);
}
