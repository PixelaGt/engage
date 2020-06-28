import 'package:engage/src/ui/widgets/common/cyber_button.dart';
import 'package:engage/src/ui/widgets/common/cyber_decoration.dart';
import 'package:engage/src/ui/widgets/common/square_icon_button.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback onAnonymous;
  final VoidCallback onGoogle;
  const LoginForm(this.onAnonymous, this.onGoogle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: context.width,
          // height: 175.0,
          child: CyberDecoration(),
          // color: Colors.yellow,
        ),
        Positioned.fill(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome',
                  style: TextStyle(
                    fontFamily: 'Bios',
                    fontSize: 32,
                    color: const Color(0xff00e3ee),
                    fontWeight: FontWeight.normal,
                  )),
              SizedBox(height: 16.0),
              Text('300 intiatives created, support your people.',
                  style: TextStyle(
                    fontFamily: 'Bios',
                    fontSize: 14,
                    color: const Color(0xff00e3ee),
                    fontWeight: FontWeight.normal,
                  )),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CyberButton('Anonymous', onAnonymous),
                  SquareIconButton(onGoogle)
                ],
              ),
            ],
          ),
        ))
      ],
    );
  }
}
