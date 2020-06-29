import 'package:flutter/material.dart';

class CyberContainer extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final bool withDecoration;

  const CyberContainer({
    @required this.child,
    @required this.onPressed,
    this.withDecoration = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (withDecoration)
            Container(width: 6.0, height: 6.0, color: Color(0xff00e3ee)),
          if (withDecoration) SizedBox(width: 8.0),
          Expanded(
            child: Material(
              color: Color(0xff00e3ee).withOpacity(0.4),
              clipBehavior: Clip.antiAlias,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  side: BorderSide(color: Color(0xff00e3ee), width: 0.7)),
              child: InkWell(
                onTap: onPressed ?? null,
                child: Container(
                  child: child,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
