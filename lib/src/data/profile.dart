import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile(
      {@Default(0) int units,
      @required String birthday,
      @required String id,
      @required String nickname,
      @required String realName,
      String displayName}) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

Profile random({String id}) => Profile(
    birthday: DateTime.now().toIso8601String(),
    id: id ?? 'idtemp',
    nickname: 'nicktemp',
    realName: 'nametemp');
