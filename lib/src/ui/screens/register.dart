import 'package:engage/src/data/profile.dart';
import 'package:engage/src/ui/screens/home.dart';
import 'package:engage/src/ui/widgets/register/register_base.dart';
import 'package:engage/src/ui/widgets/register/register_form.dart';
import 'package:engage/src/ui/widgets/register/register_header.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  final String uid;

  RegisterScreen(this.uid, {Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Profile _currentProfile;
  GlobalKey<FormState> _registerForm = GlobalKey();

  @override
  void initState() {
    super.initState();
    _setupProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterBase(
        [
          Column(
            children: [
              SafeArea(child: RegisterHeader()),
              Expanded(
                child: RegisterForm(_updateProfile, _register, _registerForm),
              )
            ],
          )
        ],
      ),
    );
  }

  void _setupProfile() {
    _currentProfile = random(id: widget.uid);
  }

  void _updateProfile({String birthday, String nickname, String realName}) {
    setState(() {
      if (birthday != null)
        _currentProfile = _currentProfile.copyWith(birthday: birthday);
      if (nickname != null)
        _currentProfile = _currentProfile.copyWith(nickname: nickname);
      if (realName != null)
        _currentProfile = _currentProfile.copyWith(realName: realName);
    });
  }

  void _register() async {
    if (_registerForm.currentState.validate()) {
      final result = await context.store.createProfile(_currentProfile);
      if (result) {
        context.navigate(HomeScreen());
      } else {}
    }
  }
}
