import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CyberPanel extends StatelessWidget {
  final String text;

  CyberPanel(
    this.text, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          // Adobe XD layer: 'border' (shape)
          Container(
            child: WebsafeSvg.asset(
              'assets/svg/cyber-panel.svg',
              fit: BoxFit.fill,
              width: context.width,
            ),
          ),
          Container(
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
        ],
      ),
    );
  }
}
