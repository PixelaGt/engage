import 'package:engage/src/ui/widgets/common/cyber_panel.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginHeader(this.onPressed, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16.0),
            Expanded(
              child: CyberPanel('all hail x aedt 32!'),
            ),
          ],
        ),
      ),
    );
  }
}
