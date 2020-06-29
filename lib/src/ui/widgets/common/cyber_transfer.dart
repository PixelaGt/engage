import 'package:engage/src/data/transfer.dart';
import 'package:engage/src/ui/widgets/common/cyber_container.dart';
import 'package:flutter/material.dart';

class CyberTransfer extends StatelessWidget {
  final Transfer transfer;

  const CyberTransfer(this.transfer, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: CyberContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transfer.initiativeName ?? '',
                style: TextStyle(
                  fontFamily: 'Bios',
                  fontSize: 18,
                  color: const Color(0xff00e3ee),
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                transfer.credits.toString(),
                style: TextStyle(
                  fontFamily: 'Bios',
                  fontSize: 14,
                  color: const Color(0xff00e3ee),
                ),
              ),
            ],
          ),
        ),
        onPressed: null,
        withDecoration: true,
      ),
    );
  }
}
