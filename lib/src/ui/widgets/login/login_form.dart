import 'package:engage/src/services/firestore.dart';
import 'package:engage/src/ui/widgets/common/cyber_button.dart';
import 'package:engage/src/ui/widgets/common/cyber_decoration.dart';
import 'package:engage/src/ui/widgets/common/square_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback onAnonymous;
  final VoidCallback onGoogle;
  const LoginForm(this.onAnonymous, this.onGoogle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CyberDecoration(),
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
                StreamBuilder(
                    initialData: 0,
                    stream:
                        context.watch<FirestoreService>().initiativesCount(),
                    builder: (context, snapshot) => Text(
                        '${snapshot.data} intiatives created, support your people.',
                        style: TextStyle(
                          fontFamily: 'Bios',
                          fontSize: 14,
                          color: const Color(0xff00e3ee),
                          fontWeight: FontWeight.normal,
                        ))),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CyberButton('get in', onAnonymous),
                    SquareIconButton('google', onGoogle)
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
