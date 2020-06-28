import 'package:engage/src/ui/widgets/common/cyber_panel.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginHeader(this.onPressed, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Hola'),
          SizedBox(height: 16.0),
          CyberPanel('Al hail x Aerdt 32!'),
        ],
      ),
    );
  }
}
