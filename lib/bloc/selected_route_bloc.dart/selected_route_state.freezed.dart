// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'selected_route_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SelectedRouteStateTearOff {
  const _$SelectedRouteStateTearOff();

// ignore: unused_element
  SelectedRouteData call({@required DirectionsRoute route}) {
    return SelectedRouteData(
      route: route,
    );
  }

// ignore: unused_element
  SelectedRouteLoading loading() {
    return const SelectedRouteLoading();
  }
}

/// @nodoc
// ignore: unused_element
const $SelectedRouteState = _$SelectedRouteStateTearOff();

/// @nodoc
mixin _$SelectedRouteState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(DirectionsRoute route), {
    @required TResult loading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(DirectionsRoute route), {
    TResult loading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(SelectedRouteData value), {
    @required TResult loading(SelectedRouteLoading value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SelectedRouteData value), {
    TResult loading(SelectedRouteLoading value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SelectedRouteStateCopyWith<$Res> {
  factory $SelectedRouteStateCopyWith(
          SelectedRouteState value, $Res Function(SelectedRouteState) then) =
      _$SelectedRouteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectedRouteStateCopyWithImpl<$Res>
    implements $SelectedRouteStateCopyWith<$Res> {
  _$SelectedRouteStateCopyWithImpl(this._value, this._then);

  final SelectedRouteState _value;
  // ignore: unused_field
  final $Res Function(SelectedRouteState) _then;
}

/// @nodoc
abstract class $SelectedRouteDataCopyWith<$Res> {
  factory $SelectedRouteDataCopyWith(
          SelectedRouteData value, $Res Function(SelectedRouteData) then) =
      _$SelectedRouteDataCopyWithImpl<$Res>;
  $Res call({DirectionsRoute route});
}

/// @nodoc
class _$SelectedRouteDataCopyWithImpl<$Res>
    extends _$SelectedRouteStateCopyWithImpl<$Res>
    implements $SelectedRouteDataCopyWith<$Res> {
  _$SelectedRouteDataCopyWithImpl(
      SelectedRouteData _value, $Res Function(SelectedRouteData) _then)
      : super(_value, (v) => _then(v as SelectedRouteData));

  @override
  SelectedRouteData get _value => super._value as SelectedRouteData;

  @override
  $Res call({
    Object route = freezed,
  }) {
    return _then(SelectedRouteData(
      route: route == freezed ? _value.route : route as DirectionsRoute,
    ));
  }
}

/// @nodoc
class _$SelectedRouteData implements SelectedRouteData {
  const _$SelectedRouteData({@required this.route}) : assert(route != null);

  @override
  final DirectionsRoute route;

  @override
  String toString() {
    return 'SelectedRouteState(route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectedRouteData &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(route);

  @JsonKey(ignore: true)
  @override
  $SelectedRouteDataCopyWith<SelectedRouteData> get copyWith =>
      _$SelectedRouteDataCopyWithImpl<SelectedRouteData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(DirectionsRoute route), {
    @required TResult loading(),
  }) {
    assert($default != null);
    assert(loading != null);
    return $default(route);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(DirectionsRoute route), {
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(SelectedRouteData value), {
    @required TResult loading(SelectedRouteLoading value),
  }) {
    assert($default != null);
    assert(loading != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SelectedRouteData value), {
    TResult loading(SelectedRouteLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SelectedRouteData implements SelectedRouteState {
  const factory SelectedRouteData({@required DirectionsRoute route}) =
      _$SelectedRouteData;

  DirectionsRoute get route;
  @JsonKey(ignore: true)
  $SelectedRouteDataCopyWith<SelectedRouteData> get copyWith;
}

/// @nodoc
abstract class $SelectedRouteLoadingCopyWith<$Res> {
  factory $SelectedRouteLoadingCopyWith(SelectedRouteLoading value,
          $Res Function(SelectedRouteLoading) then) =
      _$SelectedRouteLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectedRouteLoadingCopyWithImpl<$Res>
    extends _$SelectedRouteStateCopyWithImpl<$Res>
    implements $SelectedRouteLoadingCopyWith<$Res> {
  _$SelectedRouteLoadingCopyWithImpl(
      SelectedRouteLoading _value, $Res Function(SelectedRouteLoading) _then)
      : super(_value, (v) => _then(v as SelectedRouteLoading));

  @override
  SelectedRouteLoading get _value => super._value as SelectedRouteLoading;
}

/// @nodoc
class _$SelectedRouteLoading implements SelectedRouteLoading {
  const _$SelectedRouteLoading();

  @override
  String toString() {
    return 'SelectedRouteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectedRouteLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(DirectionsRoute route), {
    @required TResult loading(),
  }) {
    assert($default != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(DirectionsRoute route), {
    TResult loading(),
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
  TResult map<TResult extends Object>(
    TResult $default(SelectedRouteData value), {
    @required TResult loading(SelectedRouteLoading value),
  }) {
    assert($default != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SelectedRouteData value), {
    TResult loading(SelectedRouteLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SelectedRouteLoading implements SelectedRouteState {
  const factory SelectedRouteLoading() = _$SelectedRouteLoading;
}
