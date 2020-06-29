import 'package:engage/src/ui/widgets/home/navigation_item.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class HomeNavigation extends StatelessWidget {
  final VoidCallback onCredits;
  final VoidCallback onEngage;
  final VoidCallback onInitiatives;
  final int current;

  const HomeNavigation(
      this.onCredits, this.onEngage, this.onInitiatives, this.current,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff00e3ee).withOpacity(0.05),
            blurRadius: 20,
            spreadRadius: 2.0,
            offset: Offset(0, -3))
      ]),
      child: Material(
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
                  current == 0,
                  onPressed: onInitiatives,
                ),
                NavigationItem(
                  'assets/svg/icon-credits.svg',
                  'credits',
                  current == 1,
                  onPressed: onCredits,
                ),
                NavigationItem(
                  'assets/svg/icon-engage.svg',
                  'engage',
                  current == 2,
                  onPressed: onEngage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
