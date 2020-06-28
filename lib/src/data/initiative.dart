import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiative.freezed.dart';
part 'initiative.g.dart';

@freezed
abstract class Initiative with _$Initiative {
  const factory Initiative(
      {@required String description,
      @required String name,
      @required int goal,
      @required int support}) = _Initiative;

  factory Initiative.fromJson(Map<String, dynamic> json) =>
      _$InitiativeFromJson(json);
}
