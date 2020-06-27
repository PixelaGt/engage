import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:engage/src/data/profile.dart';
import 'package:engage/src/ui/screens/home.dart';
import 'package:engage/src/utils/extensions.dart';
import 'package:engage/src/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      body: Form(
        key: _registerForm,
        child: Column(
          children: [
            DateTimeField(
              format: DateFormat("yyyy-MM-dd"),
              onChanged: (value) =>
                  _updateProfile(birthday: value.toIso8601String()),
              onShowPicker: (context, currentValue) => showDatePicker(
                context: context,
                firstDate: DateTime(1900),
                initialDate: currentValue ?? DateTime.now(),
                lastDate: DateTime(2077),
                initialDatePickerMode: DatePickerMode.year,
              ),
              validator: birthdayValidator,
            ),
            TextFormField(
              onChanged: (value) => _updateProfile(realName: value),
              validator: nameValidator,
            ),
            TextFormField(
              onChanged: (value) => _updateProfile(nickname: value),
              validator: nickValidator,
            ),
            RaisedButton(onPressed: _register),
          ],
        ),
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
