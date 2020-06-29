import 'package:engage/src/ui/widgets/common/profile_builder.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileBuilder(
        builder: (context, profile) => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                WebsafeSvg.asset('assets/svg/icon-money.svg',
                    height: 24.0, width: 24.0),
                SizedBox(width: 8.0),
                Text(
                  '${profile?.units?.toString() ?? ''} credits',
                  style: TextStyle(
                    fontFamily: 'Bios',
                    fontSize: 14,
                    color: const Color(0xff00e3ee),
                  ),
                )
              ],
            ));
  }
}
