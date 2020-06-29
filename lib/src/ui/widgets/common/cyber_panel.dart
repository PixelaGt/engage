import 'package:engage/src/ui/widgets/common/cyber_container.dart';
import 'package:flutter/material.dart';

class CyberPanel extends StatelessWidget {
  final String text;

  CyberPanel(
    this.text, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CyberContainer(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
        onPressed: null);
  }
}

// 'Al hail x Aerdt 32!'
