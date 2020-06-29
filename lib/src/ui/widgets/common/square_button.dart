import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool flat;

  SquareButton(
    this.text,
    this.onPressed, {
    this.flat = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 43.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            border: Border.all(
                width: 1.0,
                color: flat ? Colors.transparent : const Color(0xff00e3ee)),
            boxShadow: [],
          ),
          child: Center(
            child: Text(
              text,
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
