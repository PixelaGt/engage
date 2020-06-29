import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeBase extends StatelessWidget {
  final List<Widget> children;

  const HomeBase(this.children, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.height,
          width: context.width,
          child: Image.asset('assets/images/background.png', fit: BoxFit.fill),
        ),
        Container(
          height: context.height,
          width: context.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [0, 0.20, 1],
              colors: [
                Color(0xff4B1873).withOpacity(0.97),
                Color(0xff261341).withOpacity(0.97),
                Color(0xff020526).withOpacity(0.97),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: WebsafeSvg.asset('assets/svg/bg-decoration.svg',
              width: context.width),
        ),
        ...children,
      ],
    );
  }
}
