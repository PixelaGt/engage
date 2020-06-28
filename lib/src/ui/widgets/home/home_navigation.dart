import 'package:engage/src/ui/widgets/home/navigation_item.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class HomeNavigation extends StatelessWidget {
  final VoidCallback onCredits;
  final VoidCallback onEngage;
  final VoidCallback onInitiatives;

  const HomeNavigation(this.onCredits, this.onEngage, this.onInitiatives,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff020526),
      clipBehavior: Clip.antiAlias,
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24.0),
        topRight: Radius.circular(24.0),
      )),
      child: Container(
        width: context.width,
        height: 72.0,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavigationItem(
                'assets/svg/icon-initiative.svg',
                'initiatives',
                onPressed: onInitiatives,
              ),
              NavigationItem(
                'assets/svg/icon-credits.svg',
                'credits',
                onPressed: onCredits,
              ),
              NavigationItem(
                'assets/svg/icon-engage.svg',
                'engage',
                onPressed: onEngage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
