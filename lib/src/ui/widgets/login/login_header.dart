import 'package:engage/src/ui/widgets/common/cyber_panel.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginHeader(this.onPressed, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hola'),
        SizedBox(height: 16.0),
        RaisedButton(onPressed: onPressed),
        SizedBox(height: 16.0),
        CyberPanel(),
      ],
    );
  }
}
