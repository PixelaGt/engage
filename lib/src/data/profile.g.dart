// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, non_constant_identifier_names

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$_$_ProfileFromJson(Map<String, dynamic> json) {
  return _$_Profile(
    units: json['units'] as int ?? 0,
    birthday: json['birthday'] as String,
    id: json['id'] as String,
    nickname: json['nickname'] as String,
    realName: json['realName'] as String,
    displayName: json['displayName'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'units': instance.units,
      'birthday': instance.birthday,
      'id': instance.id,
      'nickname': instance.nickname,
      'realName': instance.realName,
      'displayName': instance.displayName,
    };
