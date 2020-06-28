import 'package:engage/src/ui/widgets/common/profile_builder.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileBuilder(
        builder: (context, profile) => Text(profile.nickname));
  }
}
