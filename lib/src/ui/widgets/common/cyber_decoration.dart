import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CyberDecoration extends StatelessWidget {
  CyberDecoration({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      child: WebsafeSvg.asset(
        'assets/svg/cyber-decoration.svg',
        fit: BoxFit.fill,
        width: context.width,
      ),
    );
  }
}
