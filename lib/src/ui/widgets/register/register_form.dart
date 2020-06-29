import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:engage/src/ui/widgets/common/cyber_decoration.dart';
import 'package:engage/src/ui/widgets/common/square_button.dart';
import 'package:engage/src/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisterForm extends StatefulWidget {
  final Function onRegister;
  final Function onUpdateField;
  final GlobalKey<FormState> formKey;

  RegisterForm(this.onUpdateField, this.onRegister, this.formKey, {Key key})
      : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CyberDecoration(),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Form(
                key: widget.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey stranger',
                      style: TextStyle(
                        fontFamily: 'Bios',
                        fontSize: 32,
                        color: const Color(0xff00e3ee),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32.0),
                    Text(
                      'When were you born?',
                      style: TextStyle(
                        fontFamily: 'Bios',
                        fontSize: 12,
                        color: const Color(0xff00e3ee),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    DateTimeField(
                      decoration: cyberFieldDecoration,
                      format: DateFormat("yyyy-MM-dd"),
                      onChanged: (value) => widget.onUpdateField(
                          birthday: value.toIso8601String()),
                      onShowPicker: (context, currentValue) => showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        initialDate: currentValue ?? DateTime.now(),
                        lastDate: DateTime(2077),
                        initialDatePickerMode: DatePickerMode.year,
                      ),
                      style: TextStyle(
                        color: Color(0xffDC31E4),
                        fontFamily: 'Bios',
                      ),
                      validator: birthdayValidator,
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'What\'s your \'real\' name',
                      style: TextStyle(
                        fontFamily: 'Bios',
                        fontSize: 12,
                        color: const Color(0xff00e3ee),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    TextFormField(
                      decoration: cyberFieldDecoration,
                      style: TextStyle(
                        color: Color(0xffDC31E4),
                        fontFamily: 'Bios',
                      ),
                      onChanged: (value) =>
                          widget.onUpdateField(realName: value),
                      validator: nameValidator,
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'How are you know in the real world?',
                      style: TextStyle(
                        fontFamily: 'Bios',
                        fontSize: 12,
                        color: const Color(0xff00e3ee),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    TextFormField(
                      decoration: cyberFieldDecoration,
                      onChanged: (value) =>
                          widget.onUpdateField(nickname: value),
                      style: TextStyle(
                        color: Color(0xffDC31E4),
                        fontFamily: 'Bios',
                      ),
                      validator: nickValidator,
                    ),
                    SizedBox(height: 24.0),
                    SquareButton('Connect'.toUpperCase(), widget.onRegister)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

final cyberFieldDecoration = InputDecoration(
    fillColor: Color(0xff00e3ee).withOpacity(0.25),
    filled: true,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff00e3ee)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff00e3ee)),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffDC31E4)),
    ),
    errorStyle: TextStyle(
      color: Color(0xffDC31E4),
      fontFamily: 'Bios',
    ));
