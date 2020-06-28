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
      {List<String> supporters = const [],
      @required String description,
      @required String name,
      @required int goal,
      @required int support,
      String id}) {
    return _Initiative(
      supporters: supporters,
      description: description,
      name: name,
      goal: goal,
      support: support,
      id: id,
    );
  }
}

// ignore: unused_element
const $Initiative = _$InitiativeTearOff();

mixin _$Initiative {
  List<String> get supporters;
  String get description;
  String get name;
  int get goal;
  int get support;
  String get id;

  Map<String, dynamic> toJson();
  $InitiativeCopyWith<Initiative> get copyWith;
}

abstract class $InitiativeCopyWith<$Res> {
  factory $InitiativeCopyWith(
          Initiative value, $Res Function(Initiative) then) =
      _$InitiativeCopyWithImpl<$Res>;
  $Res call(
      {List<String> supporters,
      String description,
      String name,
      int goal,
      int support,
      String id});
}

class _$InitiativeCopyWithImpl<$Res> implements $InitiativeCopyWith<$Res> {
  _$InitiativeCopyWithImpl(this._value, this._then);

  final Initiative _value;
  // ignore: unused_field
  final $Res Function(Initiative) _then;

  @override
  $Res call({
    Object supporters = freezed,
    Object description = freezed,
    Object name = freezed,
    Object goal = freezed,
    Object support = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      supporters: supporters == freezed
          ? _value.supporters
          : supporters as List<String>,
      description:
          description == freezed ? _value.description : description as String,
      name: name == freezed ? _value.name : name as String,
      goal: goal == freezed ? _value.goal : goal as int,
      support: support == freezed ? _value.support : support as int,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class _$InitiativeCopyWith<$Res> implements $InitiativeCopyWith<$Res> {
  factory _$InitiativeCopyWith(
          _Initiative value, $Res Function(_Initiative) then) =
      __$InitiativeCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> supporters,
      String description,
      String name,
      int goal,
      int support,
      String id});
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
    Object supporters = freezed,
    Object description = freezed,
    Object name = freezed,
    Object goal = freezed,
    Object support = freezed,
    Object id = freezed,
  }) {
    return _then(_Initiative(
      supporters: supporters == freezed
          ? _value.supporters
          : supporters as List<String>,
      description:
          description == freezed ? _value.description : description as String,
      name: name == freezed ? _value.name : name as String,
      goal: goal == freezed ? _value.goal : goal as int,
      support: support == freezed ? _value.support : support as int,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()
class _$_Initiative with DiagnosticableTreeMixin implements _Initiative {
  const _$_Initiative(
      {this.supporters = const [],
      @required this.description,
      @required this.name,
      @required this.goal,
      @required this.support,
      this.id})
      : assert(supporters != null),
        assert(description != null),
        assert(name != null),
        assert(goal != null),
        assert(support != null);

  factory _$_Initiative.fromJson(Map<String, dynamic> json) =>
      _$_$_InitiativeFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<String> supporters;
  @override
  final String description;
  @override
  final String name;
  @override
  final int goal;
  @override
  final int support;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Initiative(supporters: $supporters, description: $description, name: $name, goal: $goal, support: $support, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Initiative'))
      ..add(DiagnosticsProperty('supporters', supporters))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('goal', goal))
      ..add(DiagnosticsProperty('support', support))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initiative &&
            (identical(other.supporters, supporters) ||
                const DeepCollectionEquality()
                    .equals(other.supporters, supporters)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.support, support) ||
                const DeepCollectionEquality()
                    .equals(other.support, support)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(supporters) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(support) ^
      const DeepCollectionEquality().hash(id);

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
      {List<String> supporters,
      @required String description,
      @required String name,
      @required int goal,
      @required int support,
      String id}) = _$_Initiative;

  factory _Initiative.fromJson(Map<String, dynamic> json) =
      _$_Initiative.fromJson;

  @override
  List<String> get supporters;
  @override
  String get description;
  @override
  String get name;
  @override
  int get goal;
  @override
  int get support;
  @override
  String get id;
  @override
  _$InitiativeCopyWith<_Initiative> get copyWith;
}
