// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'route_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RouteEventTearOff {
  const _$RouteEventTearOff();

// ignore: unused_element
  LoadRouteEvent loadRoute(
      {@required GeoCoord origin, @required GeoCoord destination}) {
    return LoadRouteEvent(
      origin: origin,
      destination: destination,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RouteEvent = _$RouteEventTearOff();

/// @nodoc
mixin _$RouteEvent {
  GeoCoord get origin;
  GeoCoord get destination;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadRoute(GeoCoord origin, GeoCoord destination),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadRoute(GeoCoord origin, GeoCoord destination),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadRoute(LoadRouteEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadRoute(LoadRouteEvent value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $RouteEventCopyWith<RouteEvent> get copyWith;
}

/// @nodoc
abstract class $RouteEventCopyWith<$Res> {
  factory $RouteEventCopyWith(
          RouteEvent value, $Res Function(RouteEvent) then) =
      _$RouteEventCopyWithImpl<$Res>;
  $Res call({GeoCoord origin, GeoCoord destination});
}

/// @nodoc
class _$RouteEventCopyWithImpl<$Res> implements $RouteEventCopyWith<$Res> {
  _$RouteEventCopyWithImpl(this._value, this._then);

  final RouteEvent _value;
  // ignore: unused_field
  final $Res Function(RouteEvent) _then;

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
abstract class $LoadRouteEventCopyWith<$Res>
    implements $RouteEventCopyWith<$Res> {
  factory $LoadRouteEventCopyWith(
          LoadRouteEvent value, $Res Function(LoadRouteEvent) then) =
      _$LoadRouteEventCopyWithImpl<$Res>;
  @override
  $Res call({GeoCoord origin, GeoCoord destination});
}

/// @nodoc
class _$LoadRouteEventCopyWithImpl<$Res> extends _$RouteEventCopyWithImpl<$Res>
    implements $LoadRouteEventCopyWith<$Res> {
  _$LoadRouteEventCopyWithImpl(
      LoadRouteEvent _value, $Res Function(LoadRouteEvent) _then)
      : super(_value, (v) => _then(v as LoadRouteEvent));

  @override
  LoadRouteEvent get _value => super._value as LoadRouteEvent;

  @override
  $Res call({
    Object origin = freezed,
    Object destination = freezed,
  }) {
    return _then(LoadRouteEvent(
      origin: origin == freezed ? _value.origin : origin as GeoCoord,
      destination:
          destination == freezed ? _value.destination : destination as GeoCoord,
    ));
  }
}

/// @nodoc
class _$LoadRouteEvent implements LoadRouteEvent {
  const _$LoadRouteEvent({@required this.origin, @required this.destination})
      : assert(origin != null),
        assert(destination != null);

  @override
  final GeoCoord origin;
  @override
  final GeoCoord destination;

  @override
  String toString() {
    return 'RouteEvent.loadRoute(origin: $origin, destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadRouteEvent &&
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
  $LoadRouteEventCopyWith<LoadRouteEvent> get copyWith =>
      _$LoadRouteEventCopyWithImpl<LoadRouteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadRoute(GeoCoord origin, GeoCoord destination),
  }) {
    assert(loadRoute != null);
    return loadRoute(origin, destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadRoute(GeoCoord origin, GeoCoord destination),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadRoute != null) {
      return loadRoute(origin, destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadRoute(LoadRouteEvent value),
  }) {
    assert(loadRoute != null);
    return loadRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadRoute(LoadRouteEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadRoute != null) {
      return loadRoute(this);
    }
    return orElse();
  }
}

abstract class LoadRouteEvent implements RouteEvent {
  const factory LoadRouteEvent(
      {@required GeoCoord origin,
      @required GeoCoord destination}) = _$LoadRouteEvent;

  @override
  GeoCoord get origin;
  @override
  GeoCoord get destination;
  @override
  @JsonKey(ignore: true)
  $LoadRouteEventCopyWith<LoadRouteEvent> get copyWith;
}
