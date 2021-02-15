// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'points_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PointsStateTearOff {
  const _$PointsStateTearOff();

// ignore: unused_element
  _PointsState call({GeoCoord origin, GeoCoord destination}) {
    return _PointsState(
      origin: origin,
      destination: destination,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PointsState = _$PointsStateTearOff();

/// @nodoc
mixin _$PointsState {
  GeoCoord get origin;
  GeoCoord get destination;

  @JsonKey(ignore: true)
  $PointsStateCopyWith<PointsState> get copyWith;
}

/// @nodoc
abstract class $PointsStateCopyWith<$Res> {
  factory $PointsStateCopyWith(
          PointsState value, $Res Function(PointsState) then) =
      _$PointsStateCopyWithImpl<$Res>;
  $Res call({GeoCoord origin, GeoCoord destination});
}

/// @nodoc
class _$PointsStateCopyWithImpl<$Res> implements $PointsStateCopyWith<$Res> {
  _$PointsStateCopyWithImpl(this._value, this._then);

  final PointsState _value;
  // ignore: unused_field
  final $Res Function(PointsState) _then;

  @override
  $Res call({
    Object origin = freezed,
    Object destination = freezed,
  }) {
    return _then(_value.copyWith(
      origin: origin == freezed ? _value.origin : origin as GeoCoord,
      destination:
          destination == freezed ? _value.destination : destination as GeoCoord,
    ));
  }
}

/// @nodoc
abstract class _$PointsStateCopyWith<$Res>
    implements $PointsStateCopyWith<$Res> {
  factory _$PointsStateCopyWith(
          _PointsState value, $Res Function(_PointsState) then) =
      __$PointsStateCopyWithImpl<$Res>;
  @override
  $Res call({GeoCoord origin, GeoCoord destination});
}

/// @nodoc
class __$PointsStateCopyWithImpl<$Res> extends _$PointsStateCopyWithImpl<$Res>
    implements _$PointsStateCopyWith<$Res> {
  __$PointsStateCopyWithImpl(
      _PointsState _value, $Res Function(_PointsState) _then)
      : super(_value, (v) => _then(v as _PointsState));

  @override
  _PointsState get _value => super._value as _PointsState;

  @override
  $Res call({
    Object origin = freezed,
    Object destination = freezed,
  }) {
    return _then(_PointsState(
      origin: origin == freezed ? _value.origin : origin as GeoCoord,
      destination:
          destination == freezed ? _value.destination : destination as GeoCoord,
    ));
  }
}

/// @nodoc
class _$_PointsState extends _PointsState {
  const _$_PointsState({this.origin, this.destination}) : super._();

  @override
  final GeoCoord origin;
  @override
  final GeoCoord destination;

  @override
  String toString() {
    return 'PointsState(origin: $origin, destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointsState &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(destination);

  @JsonKey(ignore: true)
  @override
  _$PointsStateCopyWith<_PointsState> get copyWith =>
      __$PointsStateCopyWithImpl<_PointsState>(this, _$identity);
}

abstract class _PointsState extends PointsState {
  const _PointsState._() : super._();
  const factory _PointsState({GeoCoord origin, GeoCoord destination}) =
      _$_PointsState;

  @override
  GeoCoord get origin;
  @override
  GeoCoord get destination;
  @override
  @JsonKey(ignore: true)
  _$PointsStateCopyWith<_PointsState> get copyWith;
}
