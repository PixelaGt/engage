import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiative.freezed.dart';
part 'initiative.g.dart';

@freezed
abstract class Initiative with _$Initiative {
  const factory Initiative(
      {@Default('created') String status,
      @Default(0) int support,
      @Default([]) List<String> supporters,
      @required String description,
      @required String ownerId,
      @required int goal,
      String id,
      String name}) = _Initiative;

  factory Initiative.fromJson(Map<String, dynamic> json) =>
      _$InitiativeFromJson(json);
}
