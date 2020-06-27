String birthdayValidator(DateTime value) {
  if (value == null) return 'You must enter your birthday';
  if (value.toIso8601String().isEmpty) return 'You must enter your birthday';
  return null;
}

String nameValidator(String value) {
  if (value.isEmpty) return 'You must enter your name';
  return null;
}

String nickValidator(String value) {
  if (value.isEmpty) return 'You must enter your nickname';
  return null;
}
