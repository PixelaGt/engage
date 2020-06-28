import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  SquareButton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 43.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: const Color(0xff00e3ee)),
            boxShadow: [],
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
      ),
    );
  }
}
