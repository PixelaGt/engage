import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CyberPanel extends StatelessWidget {
  CyberPanel({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'border' (shape)
        WebsafeSvg.string(
          _svg_zccime,
        ),
        Transform.translate(
          offset: Offset(40.0, 19.0),
          child:
              // Adobe XD layer: 'label' (text)
              SizedBox(
            width: 172.0,
            child: Text(
              'Al hail x Aerdt 32!',
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

const String _svg_zccime =
    '<svg viewBox="0.0 0.0 252.0 51.1" ><path  d="M 0 0 L 239.875 0 L 252 10.73358154296875 L 252 51 L 11.31907653808594 51.09933471679688 L 0 43.47894287109375 L 0 0 Z" fill="#00e3ee" fill-opacity="0.17" stroke="#00e3ee" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
