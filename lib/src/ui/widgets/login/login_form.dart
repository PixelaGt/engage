import 'package:engage/src/ui/widgets/common/cyber_button.dart';
import 'package:engage/src/ui/widgets/common/cyber_decoration.dart';
import 'package:engage/src/ui/widgets/common/square_button.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CyberDecoration(),
        Positioned.fill(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [CyberButton(), SquareButton()],
              ),
              SquareButton()
            ],
          ),
        ))
      ],
    );
  }
}
