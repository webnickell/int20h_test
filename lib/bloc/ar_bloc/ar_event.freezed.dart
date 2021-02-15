// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArEventTearOff {
  const _$ArEventTearOff();

// ignore: unused_element
  ArEventSetRoute setRoute({@required DirectionsRoute route}) {
    return ArEventSetRoute(
      route: route,
    );
  }

// ignore: unused_element
  ArEventSetLocation setLocation({@required LocationData location}) {
    return ArEventSetLocation(
      location: location,
    );
  }

// ignore: unused_element
  ArEventRepeat repeat() {
    return const ArEventRepeat();
  }
}

/// @nodoc
// ignore: unused_element
const $ArEvent = _$ArEventTearOff();

/// @nodoc
mixin _$ArEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setRoute(DirectionsRoute route),
    @required TResult setLocation(LocationData location),
    @required TResult repeat(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setRoute(DirectionsRoute route),
    TResult setLocation(LocationData location),
    TResult repeat(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setRoute(ArEventSetRoute value),
    @required TResult setLocation(ArEventSetLocation value),
    @required TResult repeat(ArEventRepeat value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setRoute(ArEventSetRoute value),
    TResult setLocation(ArEventSetLocation value),
    TResult repeat(ArEventRepeat value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ArEventCopyWith<$Res> {
  factory $ArEventCopyWith(ArEvent value, $Res Function(ArEvent) then) =
      _$ArEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArEventCopyWithImpl<$Res> implements $ArEventCopyWith<$Res> {
  _$ArEventCopyWithImpl(this._value, this._then);

  final ArEvent _value;
  // ignore: unused_field
  final $Res Function(ArEvent) _then;
}

/// @nodoc
abstract class $ArEventSetRouteCopyWith<$Res> {
  factory $ArEventSetRouteCopyWith(
          ArEventSetRoute value, $Res Function(ArEventSetRoute) then) =
      _$ArEventSetRouteCopyWithImpl<$Res>;
  $Res call({DirectionsRoute route});
}

/// @nodoc
class _$ArEventSetRouteCopyWithImpl<$Res> extends _$ArEventCopyWithImpl<$Res>
    implements $ArEventSetRouteCopyWith<$Res> {
  _$ArEventSetRouteCopyWithImpl(
      ArEventSetRoute _value, $Res Function(ArEventSetRoute) _then)
      : super(_value, (v) => _then(v as ArEventSetRoute));

  @override
  ArEventSetRoute get _value => super._value as ArEventSetRoute;

  @override
  $Res call({
    Object route = freezed,
  }) {
    return _then(ArEventSetRoute(
      route: route == freezed ? _value.route : route as DirectionsRoute,
    ));
  }
}

/// @nodoc
class _$ArEventSetRoute
    with DiagnosticableTreeMixin
    implements ArEventSetRoute {
  const _$ArEventSetRoute({@required this.route}) : assert(route != null);

  @override
  final DirectionsRoute route;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArEvent.setRoute(route: $route)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArEvent.setRoute'))
      ..add(DiagnosticsProperty('route', route));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArEventSetRoute &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(route);

  @JsonKey(ignore: true)
  @override
  $ArEventSetRouteCopyWith<ArEventSetRoute> get copyWith =>
      _$ArEventSetRouteCopyWithImpl<ArEventSetRoute>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setRoute(DirectionsRoute route),
    @required TResult setLocation(LocationData location),
    @required TResult repeat(),
  }) {
    assert(setRoute != null);
    assert(setLocation != null);
    assert(repeat != null);
    return setRoute(route);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setRoute(DirectionsRoute route),
    TResult setLocation(LocationData location),
    TResult repeat(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setRoute != null) {
      return setRoute(route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setRoute(ArEventSetRoute value),
    @required TResult setLocation(ArEventSetLocation value),
    @required TResult repeat(ArEventRepeat value),
  }) {
    assert(setRoute != null);
    assert(setLocation != null);
    assert(repeat != null);
    return setRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setRoute(ArEventSetRoute value),
    TResult setLocation(ArEventSetLocation value),
    TResult repeat(ArEventRepeat value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setRoute != null) {
      return setRoute(this);
    }
    return orElse();
  }
}

abstract class ArEventSetRoute implements ArEvent {
  const factory ArEventSetRoute({@required DirectionsRoute route}) =
      _$ArEventSetRoute;

  DirectionsRoute get route;
  @JsonKey(ignore: true)
  $ArEventSetRouteCopyWith<ArEventSetRoute> get copyWith;
}

/// @nodoc
abstract class $ArEventSetLocationCopyWith<$Res> {
  factory $ArEventSetLocationCopyWith(
          ArEventSetLocation value, $Res Function(ArEventSetLocation) then) =
      _$ArEventSetLocationCopyWithImpl<$Res>;
  $Res call({LocationData location});
}

/// @nodoc
class _$ArEventSetLocationCopyWithImpl<$Res> extends _$ArEventCopyWithImpl<$Res>
    implements $ArEventSetLocationCopyWith<$Res> {
  _$ArEventSetLocationCopyWithImpl(
      ArEventSetLocation _value, $Res Function(ArEventSetLocation) _then)
      : super(_value, (v) => _then(v as ArEventSetLocation));

  @override
  ArEventSetLocation get _value => super._value as ArEventSetLocation;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(ArEventSetLocation(
      location:
          location == freezed ? _value.location : location as LocationData,
    ));
  }
}

/// @nodoc
class _$ArEventSetLocation
    with DiagnosticableTreeMixin
    implements ArEventSetLocation {
  const _$ArEventSetLocation({@required this.location})
      : assert(location != null);

  @override
  final LocationData location;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArEvent.setLocation(location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArEvent.setLocation'))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArEventSetLocation &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $ArEventSetLocationCopyWith<ArEventSetLocation> get copyWith =>
      _$ArEventSetLocationCopyWithImpl<ArEventSetLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setRoute(DirectionsRoute route),
    @required TResult setLocation(LocationData location),
    @required TResult repeat(),
  }) {
    assert(setRoute != null);
    assert(setLocation != null);
    assert(repeat != null);
    return setLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setRoute(DirectionsRoute route),
    TResult setLocation(LocationData location),
    TResult repeat(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setLocation != null) {
      return setLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setRoute(ArEventSetRoute value),
    @required TResult setLocation(ArEventSetLocation value),
    @required TResult repeat(ArEventRepeat value),
  }) {
    assert(setRoute != null);
    assert(setLocation != null);
    assert(repeat != null);
    return setLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setRoute(ArEventSetRoute value),
    TResult setLocation(ArEventSetLocation value),
    TResult repeat(ArEventRepeat value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setLocation != null) {
      return setLocation(this);
    }
    return orElse();
  }
}

abstract class ArEventSetLocation implements ArEvent {
  const factory ArEventSetLocation({@required LocationData location}) =
      _$ArEventSetLocation;

  LocationData get location;
  @JsonKey(ignore: true)
  $ArEventSetLocationCopyWith<ArEventSetLocation> get copyWith;
}

/// @nodoc
abstract class $ArEventRepeatCopyWith<$Res> {
  factory $ArEventRepeatCopyWith(
          ArEventRepeat value, $Res Function(ArEventRepeat) then) =
      _$ArEventRepeatCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArEventRepeatCopyWithImpl<$Res> extends _$ArEventCopyWithImpl<$Res>
    implements $ArEventRepeatCopyWith<$Res> {
  _$ArEventRepeatCopyWithImpl(
      ArEventRepeat _value, $Res Function(ArEventRepeat) _then)
      : super(_value, (v) => _then(v as ArEventRepeat));

  @override
  ArEventRepeat get _value => super._value as ArEventRepeat;
}

/// @nodoc
class _$ArEventRepeat with DiagnosticableTreeMixin implements ArEventRepeat {
  const _$ArEventRepeat();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArEvent.repeat()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ArEvent.repeat'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ArEventRepeat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setRoute(DirectionsRoute route),
    @required TResult setLocation(LocationData location),
    @required TResult repeat(),
  }) {
    assert(setRoute != null);
    assert(setLocation != null);
    assert(repeat != null);
    return repeat();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setRoute(DirectionsRoute route),
    TResult setLocation(LocationData location),
    TResult repeat(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (repeat != null) {
      return repeat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setRoute(ArEventSetRoute value),
    @required TResult setLocation(ArEventSetLocation value),
    @required TResult repeat(ArEventRepeat value),
  }) {
    assert(setRoute != null);
    assert(setLocation != null);
    assert(repeat != null);
    return repeat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setRoute(ArEventSetRoute value),
    TResult setLocation(ArEventSetLocation value),
    TResult repeat(ArEventRepeat value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (repeat != null) {
      return repeat(this);
    }
    return orElse();
  }
}

abstract class ArEventRepeat implements ArEvent {
  const factory ArEventRepeat() = _$ArEventRepeat;
}
