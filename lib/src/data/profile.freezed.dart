// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

class _$ProfileTearOff {
  const _$ProfileTearOff();

  _Profile call(
      {int units = 0,
      @required String birthday,
      @required String id,
      @required String nickname,
      @required String realName,
      String displayName}) {
    return _Profile(
      units: units,
      birthday: birthday,
      id: id,
      nickname: nickname,
      realName: realName,
      displayName: displayName,
    );
  }
}

// ignore: unused_element
const $Profile = _$ProfileTearOff();

mixin _$Profile {
  int get units;
  String get birthday;
  String get id;
  String get nickname;
  String get realName;
  String get displayName;

  Map<String, dynamic> toJson();
  $ProfileCopyWith<Profile> get copyWith;
}

abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {int units,
      String birthday,
      String id,
      String nickname,
      String realName,
      String displayName});
}

class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object units = freezed,
    Object birthday = freezed,
    Object id = freezed,
    Object nickname = freezed,
    Object realName = freezed,
    Object displayName = freezed,
  }) {
    return _then(_value.copyWith(
      units: units == freezed ? _value.units : units as int,
      birthday: birthday == freezed ? _value.birthday : birthday as String,
      id: id == freezed ? _value.id : id as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      realName: realName == freezed ? _value.realName : realName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
    ));
  }
}

abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {int units,
      String birthday,
      String id,
      String nickname,
      String realName,
      String displayName});
}

class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object units = freezed,
    Object birthday = freezed,
    Object id = freezed,
    Object nickname = freezed,
    Object realName = freezed,
    Object displayName = freezed,
  }) {
    return _then(_Profile(
      units: units == freezed ? _value.units : units as int,
      birthday: birthday == freezed ? _value.birthday : birthday as String,
      id: id == freezed ? _value.id : id as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      realName: realName == freezed ? _value.realName : realName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
    ));
  }
}

@JsonSerializable()
class _$_Profile with DiagnosticableTreeMixin implements _Profile {
  const _$_Profile(
      {this.units = 0,
      @required this.birthday,
      @required this.id,
      @required this.nickname,
      @required this.realName,
      this.displayName})
      : assert(units != null),
        assert(birthday != null),
        assert(id != null),
        assert(nickname != null),
        assert(realName != null);

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int units;
  @override
  final String birthday;
  @override
  final String id;
  @override
  final String nickname;
  @override
  final String realName;
  @override
  final String displayName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Profile(units: $units, birthday: $birthday, id: $id, nickname: $nickname, realName: $realName, displayName: $displayName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Profile'))
      ..add(DiagnosticsProperty('units', units))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('realName', realName))
      ..add(DiagnosticsProperty('displayName', displayName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile &&
            (identical(other.units, units) ||
                const DeepCollectionEquality().equals(other.units, units)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.realName, realName) ||
                const DeepCollectionEquality()
                    .equals(other.realName, realName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(units) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(realName) ^
      const DeepCollectionEquality().hash(displayName);

  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileToJson(this);
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {int units,
      @required String birthday,
      @required String id,
      @required String nickname,
      @required String realName,
      String displayName}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  int get units;
  @override
  String get birthday;
  @override
  String get id;
  @override
  String get nickname;
  @override
  String get realName;
  @override
  String get displayName;
  @override
  _$ProfileCopyWith<_Profile> get copyWith;
}
