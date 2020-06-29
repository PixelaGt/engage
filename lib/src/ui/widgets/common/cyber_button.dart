import 'package:flutter/material.dart';

class CyberButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CyberButton(
    this.text,
    this.onPressed, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          side: BorderSide(color: Color(0xff00e3ee), width: 0.5)),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 43.0,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Bios',
                fontSize: 12,
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
