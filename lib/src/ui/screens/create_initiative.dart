import 'package:engage/src/data/initiative.dart';
import 'package:engage/src/ui/widgets/common/cyber_things.dart';
import 'package:engage/src/ui/widgets/common/square_button.dart';
import 'package:engage/src/ui/widgets/home/home_base.dart';
import 'package:engage/src/ui/widgets/register/register_form.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:engage/src/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CreateInitiativeScreen extends StatefulWidget {
  CreateInitiativeScreen({Key key}) : super(key: key);

  @override
  _CreateInitiativeScreenState createState() => _CreateInitiativeScreenState();
}

class _CreateInitiativeScreenState extends State<CreateInitiativeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  String _description = '';
  String _goal = '';

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: HomeBase([
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WebsafeSvg.asset('assets/svg/header-decoration.svg',
                  fit: BoxFit.cover, height: 80.0, width: context.width),
              SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: CyberThings(),
              ),
              SizedBox(height: 24.0),
              Expanded(
                  child: Container(
                child: Stack(
                  children: [
                    // CyberDecoration(),
                    Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                Text('Create initiative',
                                    style: TextStyle(
                                        color: Color(0xff00e3ee),
                                        fontFamily: 'Bios',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 32.0)),
                                SizedBox(height: 4.0),
                                Text(
                                  'This will cost you 120,000 credits',
                                  style: TextStyle(
                                    fontFamily: 'Bios',
                                    fontSize: 14,
                                    color: const Color(0xff00e3ee),
                                  ),
                                ),
                                SizedBox(height: 24.0),
                                Text(
                                  'What\'s your goal? (in credits)',
                                  style: TextStyle(
                                    fontFamily: 'Bios',
                                    fontSize: 12,
                                    color: const Color(0xff00e3ee),
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                TextFormField(
                                  decoration: cyberFieldDecoration,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    WhitelistingTextInputFormatter.digitsOnly
                                  ],
                                  onChanged: (value) =>
                                      setState(() => _goal = value),
                                  style: TextStyle(
                                    color: Color(0xffDC31E4),
                                    fontFamily: 'Bios',
                                  ),
                                  validator: goalValidator,
                                ),
                                SizedBox(height: 24.0),
                                Text(
                                  'Write something to attract people',
                                  style: TextStyle(
                                    fontFamily: 'Bios',
                                    fontSize: 12,
                                    color: const Color(0xff00e3ee),
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                TextFormField(
                                  maxLines: 6,
                                  decoration: cyberFieldDecoration,
                                  onChanged: (value) =>
                                      setState(() => _description = value),
                                  style: TextStyle(
                                    color: Color(0xffDC31E4),
                                    fontFamily: 'Bios',
                                  ),
                                  validator: descriptionValidator,
                                ),
                                SizedBox(height: 24.0),
                                SquareButton(
                                    'Create'.toUpperCase(), _createInitiative),
                                SizedBox(height: 8.0),
                                SquareButton(
                                    'Back', () => context.navigator.back(),
                                    flat: true)
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        )
      ]),
    );
  }

  void _createInitiative() async {
    context.loading();
    try {
      if (_formKey.currentState.validate()) {
        final profile = await context.store
            .getProfile((await context.auth.currentUser()).uid);
        if (profile.units >= 120000) {
          final initiative = Initiative(
              description: _description,
              goal: int.parse(_goal),
              ownerId: profile.id);
          final result =
              await context.store.createInitiative(initiative, profile);
          if (result) {
            context.hideLoading();
            context.navigator.back();
          } else {
            context.hideLoading();
          }
        } else {
          context.hideLoading();
        }
      }
    } catch (e) {
      context.hideLoading();
      print(e);
    }
  }
}
