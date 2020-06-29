import 'package:animations/animations.dart';
import 'package:engage/src/services/firestore.dart';
import 'package:engage/src/ui/screens/support_initiative.dart';
import 'package:engage/src/ui/widgets/common/cyber_initiative.dart';
import 'package:engage/src/ui/widgets/common/cyber_panel.dart';
import 'package:engage/src/ui/widgets/common/cyber_things.dart';
import 'package:engage/src/ui/widgets/common/profile_builder.dart';
import 'package:engage/src/ui/widgets/home/home_header.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class InitiativesScreen extends StatefulWidget {
  InitiativesScreen({Key key}) : super(key: key);

  @override
  _InitiativesScreenState createState() => _InitiativesScreenState();
}

class _InitiativesScreenState extends State<InitiativesScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          WebsafeSvg.asset('assets/svg/header-decoration.svg',
              fit: BoxFit.cover, height: 80.0, width: context.width),
          SizedBox(height: 24.0),
          ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 375),
              childAnimationBuilder: (widget) => SlideAnimation(
                horizontalOffset: 50.0,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: [
                HomeHeader(),
                SizedBox(height: 32.0),
                Text(
                  'Now, you are known as:',
                  style: TextStyle(
                    fontFamily: 'Bios',
                    fontSize: 16,
                    color: const Color(0xff00e3ee),
                  ),
                ),
                SizedBox(height: 16.0),
                ProfileBuilder(
                    builder: (context, profile) =>
                        CyberPanel(profile?.displayName ?? '')),
                SizedBox(height: 16.0),
                CyberThings(),
                SizedBox(height: 16.0),
                Text('Initiatives',
                    style: TextStyle(
                      fontFamily: 'Bios',
                      fontSize: 16,
                      color: const Color(0xff00e3ee),
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 8.0),
                Consumer<FirestoreService>(
                  builder: (context, value, child) => StreamBuilder(
                    initialData: [],
                    stream: value.initiativesStream(),
                    builder: (context, snapshot) => snapshot.data != null
                        ? ListView.builder(
                            itemBuilder: (context, index) => CyberInitiative(
                              snapshot.data[index],
                              onPressed: (initative) => context.navigate(
                                  SupportInitiativeScreen(initative),
                                  type: SharedAxisTransitionType.vertical),
                            ),
                            itemCount: snapshot.data.length,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                          )
                        : Container(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
