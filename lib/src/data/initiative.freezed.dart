// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'initiative.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Initiative _$InitiativeFromJson(Map<String, dynamic> json) {
  return _Initiative.fromJson(json);
}

class _$InitiativeTearOff {
  const _$InitiativeTearOff();

  _Initiative call(
      {int support = 0,
      List<String> supporters = const [],
      @required String description,
      @required String ownerId,
      @required int goal,
      String id,
      String name}) {
    return _Initiative(
      support: support,
      supporters: supporters,
      description: description,
      ownerId: ownerId,
      goal: goal,
      id: id,
      name: name,
    );
  }
}

// ignore: unused_element
const $Initiative = _$InitiativeTearOff();

mixin _$Initiative {
  int get support;
  List<String> get supporters;
  String get description;
  String get ownerId;
  int get goal;
  String get id;
  String get name;

  Map<String, dynamic> toJson();
  $InitiativeCopyWith<Initiative> get copyWith;
}

abstract class $InitiativeCopyWith<$Res> {
  factory $InitiativeCopyWith(
          Initiative value, $Res Function(Initiative) then) =
      _$InitiativeCopyWithImpl<$Res>;
  $Res call(
      {int support,
      List<String> supporters,
      String description,
      String ownerId,
      int goal,
      String id,
      String name});
}

class _$InitiativeCopyWithImpl<$Res> implements $InitiativeCopyWith<$Res> {
  _$InitiativeCopyWithImpl(this._value, this._then);

  final Initiative _value;
  // ignore: unused_field
  final $Res Function(Initiative) _then;

  @override
  $Res call({
    Object support = freezed,
    Object supporters = freezed,
    Object description = freezed,
    Object ownerId = freezed,
    Object goal = freezed,
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      support: support == freezed ? _value.support : support as int,
      supporters: supporters == freezed
          ? _value.supporters
          : supporters as List<String>,
      description:
          description == freezed ? _value.description : description as String,
      ownerId: ownerId == freezed ? _value.ownerId : ownerId as String,
      goal: goal == freezed ? _value.goal : goal as int,
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$InitiativeCopyWith<$Res> implements $InitiativeCopyWith<$Res> {
  factory _$InitiativeCopyWith(
          _Initiative value, $Res Function(_Initiative) then) =
      __$InitiativeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int support,
      List<String> supporters,
      String description,
      String ownerId,
      int goal,
      String id,
      String name});
}

class __$InitiativeCopyWithImpl<$Res> extends _$InitiativeCopyWithImpl<$Res>
    implements _$InitiativeCopyWith<$Res> {
  __$InitiativeCopyWithImpl(
      _Initiative _value, $Res Function(_Initiative) _then)
      : super(_value, (v) => _then(v as _Initiative));

  @override
  _Initiative get _value => super._value as _Initiative;

  @override
  $Res call({
    Object support = freezed,
    Object supporters = freezed,
    Object description = freezed,
    Object ownerId = freezed,
    Object goal = freezed,
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_Initiative(
      support: support == freezed ? _value.support : support as int,
      supporters: supporters == freezed
          ? _value.supporters
          : supporters as List<String>,
      description:
          description == freezed ? _value.description : description as String,
      ownerId: ownerId == freezed ? _value.ownerId : ownerId as String,
      goal: goal == freezed ? _value.goal : goal as int,
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_Initiative with DiagnosticableTreeMixin implements _Initiative {
  const _$_Initiative(
      {this.support = 0,
      this.supporters = const [],
      @required this.description,
      @required this.ownerId,
      @required this.goal,
      this.id,
      this.name})
      : assert(support != null),
        assert(supporters != null),
        assert(description != null),
        assert(ownerId != null),
        assert(goal != null);

  factory _$_Initiative.fromJson(Map<String, dynamic> json) =>
      _$_$_InitiativeFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int support;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> supporters;
  @override
  final String description;
  @override
  final String ownerId;
  @override
  final int goal;
  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Initiative(support: $support, supporters: $supporters, description: $description, ownerId: $ownerId, goal: $goal, id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Initiative'))
      ..add(DiagnosticsProperty('support', support))
      ..add(DiagnosticsProperty('supporters', supporters))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('ownerId', ownerId))
      ..add(DiagnosticsProperty('goal', goal))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initiative &&
            (identical(other.support, support) ||
                const DeepCollectionEquality()
                    .equals(other.support, support)) &&
            (identical(other.supporters, supporters) ||
                const DeepCollectionEquality()
                    .equals(other.supporters, supporters)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(support) ^
      const DeepCollectionEquality().hash(supporters) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$InitiativeCopyWith<_Initiative> get copyWith =>
      __$InitiativeCopyWithImpl<_Initiative>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitiativeToJson(this);
  }
}

abstract class _Initiative implements Initiative {
  const factory _Initiative(
      {int support,
      List<String> supporters,
      @required String description,
      @required String ownerId,
      @required int goal,
      String id,
      String name}) = _$_Initiative;

  factory _Initiative.fromJson(Map<String, dynamic> json) =
      _$_Initiative.fromJson;

  @override
  int get support;
  @override
  List<String> get supporters;
  @override
  String get description;
  @override
  String get ownerId;
  @override
  int get goal;
  @override
  String get id;
  @override
  String get name;
  @override
  _$InitiativeCopyWith<_Initiative> get copyWith;
}
