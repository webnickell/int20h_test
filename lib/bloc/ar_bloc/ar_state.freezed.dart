// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArStateTearOff {
  const _$ArStateTearOff();

// ignore: unused_element
  ArStateLoading loading() {
    return const ArStateLoading();
  }

// ignore: unused_element
  ArStateData data(
      {ArCoreNode node, LocationData location, List<LatLng> route}) {
    return ArStateData(
      node: node,
      location: location,
      route: route,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ArState = _$ArStateTearOff();

/// @nodoc
mixin _$ArState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(
            ArCoreNode node, LocationData location, List<LatLng> route),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(ArCoreNode node, LocationData location, List<LatLng> route),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(ArStateLoading value),
    @required TResult data(ArStateData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(ArStateLoading value),
    TResult data(ArStateData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ArStateCopyWith<$Res> {
  factory $ArStateCopyWith(ArState value, $Res Function(ArState) then) =
      _$ArStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArStateCopyWithImpl<$Res> implements $ArStateCopyWith<$Res> {
  _$ArStateCopyWithImpl(this._value, this._then);

  final ArState _value;
  // ignore: unused_field
  final $Res Function(ArState) _then;
}

/// @nodoc
abstract class $ArStateLoadingCopyWith<$Res> {
  factory $ArStateLoadingCopyWith(
          ArStateLoading value, $Res Function(ArStateLoading) then) =
      _$ArStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArStateLoadingCopyWithImpl<$Res> extends _$ArStateCopyWithImpl<$Res>
    implements $ArStateLoadingCopyWith<$Res> {
  _$ArStateLoadingCopyWithImpl(
      ArStateLoading _value, $Res Function(ArStateLoading) _then)
      : super(_value, (v) => _then(v as ArStateLoading));

  @override
  ArStateLoading get _value => super._value as ArStateLoading;
}

/// @nodoc
class _$ArStateLoading implements ArStateLoading {
  const _$ArStateLoading();

  @override
  String toString() {
    return 'ArState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ArStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(
            ArCoreNode node, LocationData location, List<LatLng> route),
  }) {
    assert(loading != null);
    assert(data != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(ArCoreNode node, LocationData location, List<LatLng> route),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(ArStateLoading value),
    @required TResult data(ArStateData value),
  }) {
    assert(loading != null);
    assert(data != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(ArStateLoading value),
    TResult data(ArStateData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ArStateLoading implements ArState {
  const factory ArStateLoading() = _$ArStateLoading;
}

/// @nodoc
abstract class $ArStateDataCopyWith<$Res> {
  factory $ArStateDataCopyWith(
          ArStateData value, $Res Function(ArStateData) then) =
      _$ArStateDataCopyWithImpl<$Res>;
  $Res call({ArCoreNode node, LocationData location, List<LatLng> route});
}

/// @nodoc
class _$ArStateDataCopyWithImpl<$Res> extends _$ArStateCopyWithImpl<$Res>
    implements $ArStateDataCopyWith<$Res> {
  _$ArStateDataCopyWithImpl(
      ArStateData _value, $Res Function(ArStateData) _then)
      : super(_value, (v) => _then(v as ArStateData));

  @override
  ArStateData get _value => super._value as ArStateData;

  @override
  $Res call({
    Object node = freezed,
    Object location = freezed,
    Object route = freezed,
  }) {
    return _then(ArStateData(
      node: node == freezed ? _value.node : node as ArCoreNode,
      location:
          location == freezed ? _value.location : location as LocationData,
      route: route == freezed ? _value.route : route as List<LatLng>,
    ));
  }
}

/// @nodoc
class _$ArStateData implements ArStateData {
  const _$ArStateData({this.node, this.location, this.route});

  @override
  final ArCoreNode node;
  @override
  final LocationData location;
  @override
  final List<LatLng> route;

  @override
  String toString() {
    return 'ArState.data(node: $node, location: $location, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArStateData &&
            (identical(other.node, node) ||
                const DeepCollectionEquality().equals(other.node, node)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(node) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(route);

  @JsonKey(ignore: true)
  @override
  $ArStateDataCopyWith<ArStateData> get copyWith =>
      _$ArStateDataCopyWithImpl<ArStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(
            ArCoreNode node, LocationData location, List<LatLng> route),
  }) {
    assert(loading != null);
    assert(data != null);
    return data(node, location, route);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(ArCoreNode node, LocationData location, List<LatLng> route),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(node, location, route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(ArStateLoading value),
    @required TResult data(ArStateData value),
  }) {
    assert(loading != null);
    assert(data != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(ArStateLoading value),
    TResult data(ArStateData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ArStateData implements ArState {
  const factory ArStateData(
      {ArCoreNode node,
      LocationData location,
      List<LatLng> route}) = _$ArStateData;

  ArCoreNode get node;
  LocationData get location;
  List<LatLng> get route;
  @JsonKey(ignore: true)
  $ArStateDataCopyWith<ArStateData> get copyWith;
}
