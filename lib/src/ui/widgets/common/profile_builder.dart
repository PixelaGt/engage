import 'package:engage/src/data/profile.dart';
import 'package:engage/src/services/firestore.dart';
import 'package:engage/src/services/session.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef BuilderFn = Widget Function(BuildContext, Profile profile);

class ProfileBuilder extends StatelessWidget {
  final BuilderFn builder;

  const ProfileBuilder({
    @required this.builder,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: null,
      future: context.watch<AuthService>().currentUser(),
      builder: (context, value) => value.data != null
          ? StreamBuilder(
              initialData: null,
              stream: context
                  .watch<FirestoreService>()
                  .profileStream((value.data as FirebaseUser).uid),
              builder: (context, snapshot) => value.data != null
                  ? builder(context, snapshot.data)
                  : Container(),
            )
          : Container(),
    );
  }
}
