import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SquareIconButton extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;

  SquareIconButton(
    this.icon,
    this.onPressed, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 105.0,
          height: 43.0,
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: const Color(0xff00e3ee)),
            boxShadow: [],
          ),
          child: Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: WebsafeSvg.asset(
                'assets/svg/icon-$icon.svg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
