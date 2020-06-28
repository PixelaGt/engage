import 'package:engage/src/services/firestore.dart';
import 'package:engage/src/ui/widgets/common/cyber_initiative.dart';
import 'package:engage/src/ui/widgets/common/cyber_panel.dart';
import 'package:engage/src/ui/widgets/common/profile_builder.dart';
import 'package:engage/src/ui/widgets/home/home_base.dart';
import 'package:engage/src/ui/widgets/home/home_header.dart';
import 'package:engage/src/ui/widgets/home/navigation_item.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeBase(
      [
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            padding: EdgeInsets.zero,
            children: [
              WebsafeSvg.asset('assets/svg/header-decoration.svg',
                  fit: BoxFit.fill),
              SizedBox(height: 16.0),
              ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                children: [
                  HomeHeader(),
                  SizedBox(height: 32.0),
                  Text(
                    'Now, you are know as:',
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
                  SizedBox(height: 32.0),
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
                      builder: (context, snapshot) => ListView.builder(
                        itemBuilder: (context, index) =>
                            CyberInitiative(snapshot.data[index]),
                        itemCount: snapshot.data.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            mini: true,
            child: WebsafeSvg.asset('assets/svg/icon-plus.svg',
                height: 18.0, width: 18.0),
            backgroundColor: Color(0xff00e3ee).withOpacity(0.25),
            shape: CircleBorder(side: BorderSide(color: Color(0xff00e3ee))),
          ),
          bottomNavigationBar: Material(
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
                      onPressed: () {},
                    ),
                    NavigationItem(
                      'assets/svg/icon-credits.svg',
                      'credits',
                    ),
                    NavigationItem(
                      'assets/svg/icon-engage.svg',
                      'engage',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
