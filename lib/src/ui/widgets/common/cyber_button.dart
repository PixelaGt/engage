import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CyberButton extends StatelessWidget {
  CyberButton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'border' (shape)
        WebsafeSvg.string(
          svgPath,
        ),
        Transform.translate(
          offset: Offset(43.0, 15.0),
          child:
              // Adobe XD layer: 'Label' (text)
              SizedBox(
            width: 52.0,
            child: Text(
              'Get in',
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
    );
  }
}

const String svgPath =
    '<svg viewBox="0.0 0.0 138.0 43.0" ><path  d="M 0 0 L 128.1836547851563 0 L 138 9.1640625 L 138 43 L 7.703242778778076 43 L 0 32.80575561523438 L 0 0 Z" fill="none" stroke="#00e3ee" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
