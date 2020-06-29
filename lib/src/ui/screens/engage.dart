import 'package:engage/src/services/firestore.dart';
import 'package:engage/src/ui/screens/withdraw.dart';
import 'package:engage/src/ui/widgets/common/cyber_initiative.dart';
import 'package:engage/src/ui/widgets/common/cyber_things.dart';
import 'package:engage/src/ui/widgets/common/profile_builder.dart';
import 'package:engage/src/ui/widgets/home/home_header.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class EngageScreen extends StatefulWidget {
  EngageScreen({Key key}) : super(key: key);

  @override
  _EngageScreenState createState() => _EngageScreenState();
}

class _EngageScreenState extends State<EngageScreen> {
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
                SizedBox(height: 16.0),
                CyberThings(),
                SizedBox(height: 24.0),
                Text('Withdraw found from your initiatives',
                    style: TextStyle(
                      fontFamily: 'Bios',
                      fontSize: 14,
                      color: const Color(0xff00e3ee),
                    )),
                SizedBox(height: 16.0),
                Text('Your initiatives',
                    style: TextStyle(
                      fontFamily: 'Bios',
                      fontSize: 16,
                      color: const Color(0xff00e3ee),
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 8.0),
                ProfileBuilder(
                  builder: (context, profile) => profile == null
                      ? Container()
                      : StreamBuilder(
                          initialData: [],
                          stream: context
                              .watch<FirestoreService>()
                              .myInitiatives(profile.id),
                          builder: (context, snapshot) {
                            if (snapshot.data == null) {
                              return Container();
                            } else {
                              return ListView.builder(
                                itemBuilder: (context, index) =>
                                    CyberInitiative(
                                  snapshot.data[index],
                                  onPressed: (initiative) => context
                                      .navigate(WithdrawScreen(initiative)),
                                ),
                                itemCount: snapshot.data.length,
                                shrinkWrap: true,
                                physics: ClampingScrollPhysics(),
                              );
                            }
                          },
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
