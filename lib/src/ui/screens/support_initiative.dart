import 'package:engage/src/data/initiative.dart';
import 'package:engage/src/ui/widgets/common/profile_builder.dart';
import 'package:engage/src/ui/widgets/common/square_button.dart';
import 'package:engage/src/ui/widgets/register/register_form.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:engage/src/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SupportInitiativeScreen extends StatefulWidget {
  final Initiative initiative;

  SupportInitiativeScreen(this.initiative, {Key key}) : super(key: key);

  @override
  _SupportInitiativeScreenState createState() =>
      _SupportInitiativeScreenState();
}

class _SupportInitiativeScreenState extends State<SupportInitiativeScreen> {
  int _supportAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff020526),
      body: Stack(
        children: [
          WebsafeSvg.asset('assets/svg/header-decoration.svg',
              fit: BoxFit.fill, height: 80.0),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How much are you adding to this initiative?',
                          style: TextStyle(
                            fontFamily: 'Bios',
                            fontSize: 12,
                            color: const Color(0xff00e3ee),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: cyberFieldDecoration,
                          style: TextStyle(
                            color: Color(0xffDC31E4),
                            fontFamily: 'Bios',
                          ),
                          onChanged: (value) =>
                              setState(() => _supportAmount = int.parse(value)),
                          validator: nameValidator,
                        ),
                        SizedBox(height: 8.0),
                        ProfileBuilder(
                            builder: (context, profile) => profile == null
                                ? Container()
                                : Text(
                                    'You currently have ${profile.units} credits',
                                    style: TextStyle(
                                      fontFamily: 'Bios',
                                      fontSize: 12,
                                      color: const Color(0xff00e3ee),
                                    ),
                                  ))
                      ],
                    ),
                    SquareButton('Support'.toUpperCase(), _support)
                  ],
                )),
          )
        ],
      ),
    );
  }

  void _support() async {
    if (_supportAmount != 0) {
      final uid = (await context.auth.currentUser()).uid;
      final profile = await context.store.getProfile(uid);
      if (profile != null && profile.units > _supportAmount) {
        final result = await context.store
            .supportInitiative(widget.initiative, _supportAmount, profile);
        if (result) {
          context.navigator.back();
        } else {}
      } else {}
    } else {}
  }
}
