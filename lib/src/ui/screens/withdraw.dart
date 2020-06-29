import 'package:chance/chance.dart';
import 'package:engage/src/data/initiative.dart';
import 'package:engage/src/ui/widgets/common/cyber_button.dart';
import 'package:engage/src/ui/widgets/common/square_button.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WithdrawScreen extends StatefulWidget {
  final Initiative initiative;

  WithdrawScreen(this.initiative, {Key key}) : super(key: key);

  @override
  _WithdrawScreenState createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Scaffold(
        backgroundColor: Color(0xff020526),
        body: Stack(
          children: [
            WebsafeSvg.asset('assets/svg/header-decoration.svg',
                fit: BoxFit.cover, height: 80.0, width: context.width),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 500),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: 100.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.initiative.name ?? '',
                          style: TextStyle(
                            fontFamily: 'Bios',
                            fontSize: 32,
                            color: const Color(0xff00e3ee),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          widget.initiative.description ?? '',
                          style: TextStyle(
                            fontFamily: 'Bios',
                            fontSize: 24,
                            color: const Color(0xff00e3ee),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '${widget.initiative.support.toString()}/${widget.initiative.goal.toString()} units',
                          style: TextStyle(
                            fontFamily: 'Bios',
                            fontSize: 12,
                            color: const Color(0xff00e3ee),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text('support this initiative to get to the top',
                            style: TextStyle(
                              fontFamily: 'Bios',
                              fontSize: 12,
                              color: const Color(0xff00e3ee),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        SquareButton('Withdraw'.toUpperCase(), _withdraw),
                        SizedBox(height: 4.0),
                        Text(
                          'Give back to your community 2x of their transfers, and get 2x of the largest one.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Bios',
                            fontSize: 12,
                            color: const Color(0xff00e3ee),
                          ),
                        ),
                        SizedBox(height: 24.0),
                        CyberButton('Keep all', _keepAll),
                        SizedBox(height: 4.0),
                        Text(
                          'get 2x your goal, with a 45% of chance to lose it all',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Bios',
                            fontSize: 12,
                            color: const Color(0xff00e3ee),
                          ),
                        ),
                        SizedBox(height: 24.0),
                        SquareButton('Back', () => context.navigator.back(),
                            flat: true)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _withdraw() async {
    context.loading();
    final result = await context.store
        .updateInitiativeStatus(widget.initiative, 'withdrawed');
    context.hideLoading();
    if (result) {
      return context.navigator.back();
    }
  }

  void _keepAll() async {
    context.loading();
    bool keepIt = Chance().boolean(likelihood: 35);
    keepIt
        ? await context.store
            .updateInitiativeStatus(widget.initiative, 'keepAll')
        : await context.store
            .updateInitiativeStatus(widget.initiative, 'failed');
    context.hideLoading();
    return context.navigator.back();
  }
}
