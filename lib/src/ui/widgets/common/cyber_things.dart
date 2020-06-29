import 'package:flutter/material.dart';

class CyberThings extends StatelessWidget {
  const CyberThings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8.0,
          height: 10.0,
          color: Color(0xff00e3ee),
        ),
        SizedBox(width: 4.0),
        Container(
          width: 3.0,
          height: 10.0,
          color: Color(0xff00e3ee),
        ),
        SizedBox(width: 2.0),
        Container(
          width: 3.0,
          height: 10.0,
          color: Color(0xff00e3ee).withOpacity(0.5),
        ),
      ],
    );
  }
}
