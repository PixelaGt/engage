// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, non_constant_identifier_names

part of 'initiative.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initiative _$_$_InitiativeFromJson(Map<String, dynamic> json) {
  return _$_Initiative(
    supporters:
        (json['supporters'] as List)?.map((e) => e as String)?.toList() ?? [],
    description: json['description'] as String,
    name: json['name'] as String,
    goal: json['goal'] as int,
    support: json['support'] as int,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_InitiativeToJson(_$_Initiative instance) =>
    <String, dynamic>{
      'supporters': instance.supporters,
      'description': instance.description,
      'name': instance.name,
      'goal': instance.goal,
      'support': instance.support,
      'id': instance.id,
    };
