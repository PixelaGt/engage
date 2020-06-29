import 'dart:async';
import 'package:engage/src/ui/widgets/common/cyber_button.dart';
import 'package:engage/src/ui/widgets/common/cyber_container.dart';
import 'package:engage/src/ui/widgets/common/square_button.dart';
import 'package:engage/src/ui/widgets/home/home_base.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MineScreen extends StatefulWidget {
  MineScreen({Key key}) : super(key: key);

  @override
  _MineScreenState createState() => _MineScreenState();
}

class _MineScreenState extends State<MineScreen> {
  final Stopwatch _stopwatch = Stopwatch();
  Timer _timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    if (_stopwatch.isRunning) _stopwatch.stop();
    if (_timer != null && _timer.isActive) _timer.cancel();
    super.dispose();
  }

  String get timerText =>
      '${_stopwatch.elapsed.inHours}:${_stopwatch.elapsed.inMinutes}:${_stopwatch.elapsed.inSeconds % 60}';

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: HomeBase([
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              WebsafeSvg.asset('assets/svg/header-decoration.svg',
                  fit: BoxFit.fill, width: context.width),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Center(
                    child: CyberContainer(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 128.0),
                          child: Column(
                              children: AnimationConfiguration.toStaggeredList(
                                  duration: const Duration(milliseconds: 500),
                                  childAnimationBuilder: (widget) =>
                                      SlideAnimation(
                                        verticalOffset: 100.0,
                                        child: FadeInAnimation(
                                          child: widget,
                                        ),
                                      ),
                                  children: [
                                Text('Elapsed time',
                                    style: TextStyle(
                                      fontFamily: 'Bios',
                                      fontSize: 16,
                                      color: const Color(0xff00e3ee),
                                    )),
                                Text(timerText,
                                    style: TextStyle(
                                      fontFamily: 'Bios',
                                      fontSize: 48,
                                      color: const Color(0xff00e3ee),
                                    )),
                                SizedBox(height: 64.0),
                                Text('Credits in this session',
                                    style: TextStyle(
                                      fontFamily: 'Bios',
                                      fontSize: 16,
                                      color: const Color(0xff00e3ee),
                                    )),
                                Text(
                                    '${(1500 * (_stopwatch.elapsedMilliseconds / 60000)).toStringAsFixed(0)}',
                                    style: TextStyle(
                                      fontFamily: 'Bios',
                                      fontSize: 48,
                                      color: const Color(0xff00e3ee),
                                    )),
                                SizedBox(height: 64.0),
                                SquareButton(
                                  _stopwatch.isRunning ? 'Stop' : 'Start',
                                  _stopwatch.isRunning
                                      ? () => _stop()
                                      : () => _start(),
                                ),
                                SizedBox(height: 16.0),
                                CyberButton('Transfer', _credit),
                                SizedBox(height: 8.0),
                                SquareButton(
                                    'Back', () => context.navigator.back(),
                                    flat: true)
                              ])),
                        ),
                        onPressed: null),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  void _credit() async {
    if (_stopwatch.isRunning) _stop();
    final credits = (1500 * (_stopwatch.elapsedMilliseconds / 60000)).round();
    if (credits > 0) {
      final profile = await context.store
          .getProfile((await context.auth.currentUser()).uid);
      final result = await context.store.addCredits(profile, credits);
      if (result) {
        _reset();
      } else {}
    }
  }

  void _reset() {
    _stopwatch.reset();
    _timer.cancel();
    setState(() {});
  }

  void _start() {
    _stopwatch.start();
    _timer =
        Timer.periodic(Duration(milliseconds: 20), (timer) => setState(() {}));
  }

  void _stop() {
    _stopwatch.stop();
    _timer.cancel();
    setState(() {});
  }
}
