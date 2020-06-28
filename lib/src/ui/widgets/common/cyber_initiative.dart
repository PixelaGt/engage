import 'package:engage/src/data/initiative.dart';
import 'package:engage/src/ui/widgets/common/cyber_container.dart';
import 'package:flutter/material.dart';

class CyberInitiative extends StatelessWidget {
  final Function(Initiative) onPressed;
  final Initiative initiative;

  const CyberInitiative(this.initiative, {this.onPressed, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: CyberContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                initiative.name,
                style: TextStyle(
                  fontFamily: 'Bios',
                  fontSize: 18,
                  color: const Color(0xff00e3ee),
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                initiative.description,
                style: TextStyle(
                  fontFamily: 'Bios',
                  fontSize: 14,
                  color: const Color(0xff00e3ee),
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                '${initiative.support.toString()}/${initiative.goal.toString()} units',
                style: TextStyle(
                  fontFamily: 'Bios',
                  fontSize: 12,
                  color: const Color(0xff00e3ee),
                ),
              ),
            ],
          ),
        ),
        onPressed: onPressed != null ? () => onPressed(initiative) : null,
        withDecoration: true,
      ),
    );
  }
}
