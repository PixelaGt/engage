import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class NavigationItem extends StatelessWidget {
  final String item;
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;

  const NavigationItem(this.item, this.text, this.isSelected,
      {this.onPressed, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: onPressed ?? null,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              WebsafeSvg.asset(item, height: 24.0, width: 24.0),
              SizedBox(height: 8.0),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Bios',
                  fontSize: 10.0,
                  color: isSelected
                      ? const Color(0xffDC31E4)
                      : const Color(0xff00e3ee),
                ),
              ),
            ],
          )),
    );
  }
}
