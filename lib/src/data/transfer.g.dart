// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, non_constant_identifier_names

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transfer _$_$_TransferFromJson(Map<String, dynamic> json) {
  return _$_Transfer(
    initiativeId: json['initiativeId'] as String,
    initiativeName: json['initiativeName'] as String,
    profileId: json['profileId'] as String,
    credits: json['credits'] as int,
  );
}

Map<String, dynamic> _$_$_TransferToJson(_$_Transfer instance) =>
    <String, dynamic>{
      'initiativeId': instance.initiativeId,
      'initiativeName': instance.initiativeName,
      'profileId': instance.profileId,
      'credits': instance.credits,
    };
