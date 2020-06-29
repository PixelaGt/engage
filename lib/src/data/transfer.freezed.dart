// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Transfer _$TransferFromJson(Map<String, dynamic> json) {
  return _Transfer.fromJson(json);
}

class _$TransferTearOff {
  const _$TransferTearOff();

  _Transfer call(
      {@required String initiativeId,
      @required String initiativeName,
      @required String profileId,
      @required int credits}) {
    return _Transfer(
      initiativeId: initiativeId,
      initiativeName: initiativeName,
      profileId: profileId,
      credits: credits,
    );
  }
}

// ignore: unused_element
const $Transfer = _$TransferTearOff();

mixin _$Transfer {
  String get initiativeId;
  String get initiativeName;
  String get profileId;
  int get credits;

  Map<String, dynamic> toJson();
  $TransferCopyWith<Transfer> get copyWith;
}

abstract class $TransferCopyWith<$Res> {
  factory $TransferCopyWith(Transfer value, $Res Function(Transfer) then) =
      _$TransferCopyWithImpl<$Res>;
  $Res call(
      {String initiativeId,
      String initiativeName,
      String profileId,
      int credits});
}

class _$TransferCopyWithImpl<$Res> implements $TransferCopyWith<$Res> {
  _$TransferCopyWithImpl(this._value, this._then);

  final Transfer _value;
  // ignore: unused_field
  final $Res Function(Transfer) _then;

  @override
  $Res call({
    Object initiativeId = freezed,
    Object initiativeName = freezed,
    Object profileId = freezed,
    Object credits = freezed,
  }) {
    return _then(_value.copyWith(
      initiativeId: initiativeId == freezed
          ? _value.initiativeId
          : initiativeId as String,
      initiativeName: initiativeName == freezed
          ? _value.initiativeName
          : initiativeName as String,
      profileId: profileId == freezed ? _value.profileId : profileId as String,
      credits: credits == freezed ? _value.credits : credits as int,
    ));
  }
}

abstract class _$TransferCopyWith<$Res> implements $TransferCopyWith<$Res> {
  factory _$TransferCopyWith(_Transfer value, $Res Function(_Transfer) then) =
      __$TransferCopyWithImpl<$Res>;
  @override
  $Res call(
      {String initiativeId,
      String initiativeName,
      String profileId,
      int credits});
}

class __$TransferCopyWithImpl<$Res> extends _$TransferCopyWithImpl<$Res>
    implements _$TransferCopyWith<$Res> {
  __$TransferCopyWithImpl(_Transfer _value, $Res Function(_Transfer) _then)
      : super(_value, (v) => _then(v as _Transfer));

  @override
  _Transfer get _value => super._value as _Transfer;

  @override
  $Res call({
    Object initiativeId = freezed,
    Object initiativeName = freezed,
    Object profileId = freezed,
    Object credits = freezed,
  }) {
    return _then(_Transfer(
      initiativeId: initiativeId == freezed
          ? _value.initiativeId
          : initiativeId as String,
      initiativeName: initiativeName == freezed
          ? _value.initiativeName
          : initiativeName as String,
      profileId: profileId == freezed ? _value.profileId : profileId as String,
      credits: credits == freezed ? _value.credits : credits as int,
    ));
  }
}

@JsonSerializable()
class _$_Transfer with DiagnosticableTreeMixin implements _Transfer {
  const _$_Transfer(
      {@required this.initiativeId,
      @required this.initiativeName,
      @required this.profileId,
      @required this.credits})
      : assert(initiativeId != null),
        assert(initiativeName != null),
        assert(profileId != null),
        assert(credits != null);

  factory _$_Transfer.fromJson(Map<String, dynamic> json) =>
      _$_$_TransferFromJson(json);

  @override
  final String initiativeId;
  @override
  final String initiativeName;
  @override
  final String profileId;
  @override
  final int credits;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transfer(initiativeId: $initiativeId, initiativeName: $initiativeName, profileId: $profileId, credits: $credits)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transfer'))
      ..add(DiagnosticsProperty('initiativeId', initiativeId))
      ..add(DiagnosticsProperty('initiativeName', initiativeName))
      ..add(DiagnosticsProperty('profileId', profileId))
      ..add(DiagnosticsProperty('credits', credits));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transfer &&
            (identical(other.initiativeId, initiativeId) ||
                const DeepCollectionEquality()
                    .equals(other.initiativeId, initiativeId)) &&
            (identical(other.initiativeName, initiativeName) ||
                const DeepCollectionEquality()
                    .equals(other.initiativeName, initiativeName)) &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)) &&
            (identical(other.credits, credits) ||
                const DeepCollectionEquality().equals(other.credits, credits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initiativeId) ^
      const DeepCollectionEquality().hash(initiativeName) ^
      const DeepCollectionEquality().hash(profileId) ^
      const DeepCollectionEquality().hash(credits);

  @override
  _$TransferCopyWith<_Transfer> get copyWith =>
      __$TransferCopyWithImpl<_Transfer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransferToJson(this);
  }
}

abstract class _Transfer implements Transfer {
  const factory _Transfer(
      {@required String initiativeId,
      @required String initiativeName,
      @required String profileId,
      @required int credits}) = _$_Transfer;

  factory _Transfer.fromJson(Map<String, dynamic> json) = _$_Transfer.fromJson;

  @override
  String get initiativeId;
  @override
  String get initiativeName;
  @override
  String get profileId;
  @override
  int get credits;
  @override
  _$TransferCopyWith<_Transfer> get copyWith;
}
