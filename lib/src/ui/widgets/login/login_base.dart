import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class LoginBase extends StatelessWidget {
  final List<Widget> children;

  const LoginBase(this.children, {Key key}) : super(key: key);

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
        ...children
      ],
    );
  }
}
