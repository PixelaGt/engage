import 'package:animations/animations.dart';
import 'package:engage/src/ui/screens/create_initiative.dart';
import 'package:engage/src/ui/screens/credits.dart';
import 'package:engage/src/ui/screens/initiatives.dart';
import 'package:engage/src/ui/widgets/home/home_base.dart';
import 'package:engage/src/ui/widgets/home/home_navigation.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController(
    initialPage: 0,
  );

  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomeBase([
      Scaffold(
          backgroundColor: Colors.transparent,
          body: PageView(
            controller: _pageController,
            children: screens,
            pageSnapping: false,
            physics: NeverScrollableScrollPhysics(),
          ),
          bottomNavigationBar: HomeNavigation(() => changePage(1),
              () => changePage(2), () => changePage(0), _currentPage),
          floatingActionButton: _currentPage == 0
              ? FloatingActionButton(
                  onPressed: () => context.navigate(CreateInitiativeScreen(),
                      type: SharedAxisTransitionType.vertical),
                  mini: true,
                  child: WebsafeSvg.asset('assets/svg/icon-plus.svg',
                      height: 18.0, width: 18.0),
                  backgroundColor: Color(0xff00e3ee).withOpacity(0.25),
                  shape:
                      CircleBorder(side: BorderSide(color: Color(0xff00e3ee))),
                )
              : Container())
    ]);
  }

  void changePage(int index) {
    _pageController.jumpToPage(index);
    setState(() => _currentPage = index);
  }

  List<Widget> get screens =>
      [InitiativesScreen(), CreditsScreen(), Container(color: Colors.cyan)];
}
