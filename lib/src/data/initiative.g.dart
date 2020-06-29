// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, non_constant_identifier_names

part of 'initiative.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initiative _$_$_InitiativeFromJson(Map<String, dynamic> json) {
  return _$_Initiative(
    support: json['support'] as int ?? 0,
    supporters:
        (json['supporters'] as List)?.map((e) => e as String)?.toList() ?? [],
    description: json['description'] as String,
    ownerId: json['ownerId'] as String,
    goal: json['goal'] as int,
    id: json['id'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_InitiativeToJson(_$_Initiative instance) =>
    <String, dynamic>{
      'support': instance.support,
      'supporters': instance.supporters,
      'description': instance.description,
      'ownerId': instance.ownerId,
      'goal': instance.goal,
      'id': instance.id,
      'name': instance.name,
    };
