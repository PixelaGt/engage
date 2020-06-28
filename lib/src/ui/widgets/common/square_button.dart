import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  SquareButton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 43.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: const Color(0xff00e3ee)),
            boxShadow: [
              BoxShadow(
                color: const Color(0x4f00e3ee),
                offset: Offset(0, 0),
                blurRadius: 12,
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Join now',
              style: TextStyle(
                fontFamily: 'Bios',
                fontSize: 16,
                color: const Color(0xff00e3ee),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
