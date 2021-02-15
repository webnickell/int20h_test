// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'route_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RouteStateTearOff {
  const _$RouteStateTearOff();

// ignore: unused_element
  RouteStateData call({@required List<DirectionsRoute> routes}) {
    return RouteStateData(
      routes: routes,
    );
  }

// ignore: unused_element
  RouteStateLoading loading() {
    return const RouteStateLoading();
  }

// ignore: unused_element
  RouteStateError error({@required String message}) {
    return RouteStateError(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RouteState = _$RouteStateTearOff();

/// @nodoc
mixin _$RouteState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<DirectionsRoute> routes), {
    @required TResult loading(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<DirectionsRoute> routes), {
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(RouteStateData value), {
    @required TResult loading(RouteStateLoading value),
    @required TResult error(RouteStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(RouteStateData value), {
    TResult loading(RouteStateLoading value),
    TResult error(RouteStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RouteStateCopyWith<$Res> {
  factory $RouteStateCopyWith(
          RouteState value, $Res Function(RouteState) then) =
      _$RouteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteStateCopyWithImpl<$Res> implements $RouteStateCopyWith<$Res> {
  _$RouteStateCopyWithImpl(this._value, this._then);

  final RouteState _value;
  // ignore: unused_field
  final $Res Function(RouteState) _then;
}

/// @nodoc
abstract class $RouteStateDataCopyWith<$Res> {
  factory $RouteStateDataCopyWith(
          RouteStateData value, $Res Function(RouteStateData) then) =
      _$RouteStateDataCopyWithImpl<$Res>;
  $Res call({List<DirectionsRoute> routes});
}

/// @nodoc
class _$RouteStateDataCopyWithImpl<$Res> extends _$RouteStateCopyWithImpl<$Res>
    implements $RouteStateDataCopyWith<$Res> {
  _$RouteStateDataCopyWithImpl(
      RouteStateData _value, $Res Function(RouteStateData) _then)
      : super(_value, (v) => _then(v as RouteStateData));

  @override
  RouteStateData get _value => super._value as RouteStateData;

  @override
  $Res call({
    Object routes = freezed,
  }) {
    return _then(RouteStateData(
      routes:
          routes == freezed ? _value.routes : routes as List<DirectionsRoute>,
    ));
  }
}

/// @nodoc
class _$RouteStateData implements RouteStateData {
  const _$RouteStateData({@required this.routes}) : assert(routes != null);

  @override
  final List<DirectionsRoute> routes;

  @override
  String toString() {
    return 'RouteState(routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RouteStateData &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(routes);

  @JsonKey(ignore: true)
  @override
  $RouteStateDataCopyWith<RouteStateData> get copyWith =>
      _$RouteStateDataCopyWithImpl<RouteStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<DirectionsRoute> routes), {
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(routes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<DirectionsRoute> routes), {
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(routes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(RouteStateData value), {
    @required TResult loading(RouteStateLoading value),
    @required TResult error(RouteStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(RouteStateData value), {
    TResult loading(RouteStateLoading value),
    TResult error(RouteStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RouteStateData implements RouteState {
  const factory RouteStateData({@required List<DirectionsRoute> routes}) =
      _$RouteStateData;

  List<DirectionsRoute> get routes;
  @JsonKey(ignore: true)
  $RouteStateDataCopyWith<RouteStateData> get copyWith;
}

/// @nodoc
abstract class $RouteStateLoadingCopyWith<$Res> {
  factory $RouteStateLoadingCopyWith(
          RouteStateLoading value, $Res Function(RouteStateLoading) then) =
      _$RouteStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteStateLoadingCopyWithImpl<$Res>
    extends _$RouteStateCopyWithImpl<$Res>
    implements $RouteStateLoadingCopyWith<$Res> {
  _$RouteStateLoadingCopyWithImpl(
      RouteStateLoading _value, $Res Function(RouteStateLoading) _then)
      : super(_value, (v) => _then(v as RouteStateLoading));

  @override
  RouteStateLoading get _value => super._value as RouteStateLoading;
}

/// @nodoc
class _$RouteStateLoading implements RouteStateLoading {
  const _$RouteStateLoading();

  @override
  String toString() {
    return 'RouteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RouteStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<DirectionsRoute> routes), {
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<DirectionsRoute> routes), {
    TResult loading(),
    TResult error(String message),
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
    TResult $default(RouteStateData value), {
    @required TResult loading(RouteStateLoading value),
    @required TResult error(RouteStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(RouteStateData value), {
    TResult loading(RouteStateLoading value),
    TResult error(RouteStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RouteStateLoading implements RouteState {
  const factory RouteStateLoading() = _$RouteStateLoading;
}

/// @nodoc
abstract class $RouteStateErrorCopyWith<$Res> {
  factory $RouteStateErrorCopyWith(
          RouteStateError value, $Res Function(RouteStateError) then) =
      _$RouteStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$RouteStateErrorCopyWithImpl<$Res> extends _$RouteStateCopyWithImpl<$Res>
    implements $RouteStateErrorCopyWith<$Res> {
  _$RouteStateErrorCopyWithImpl(
      RouteStateError _value, $Res Function(RouteStateError) _then)
      : super(_value, (v) => _then(v as RouteStateError));

  @override
  RouteStateError get _value => super._value as RouteStateError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(RouteStateError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$RouteStateError implements RouteStateError {
  const _$RouteStateError({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RouteState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RouteStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $RouteStateErrorCopyWith<RouteStateError> get copyWith =>
      _$RouteStateErrorCopyWithImpl<RouteStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<DirectionsRoute> routes), {
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<DirectionsRoute> routes), {
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(RouteStateData value), {
    @required TResult loading(RouteStateLoading value),
    @required TResult error(RouteStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(RouteStateData value), {
    TResult loading(RouteStateLoading value),
    TResult error(RouteStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RouteStateError implements RouteState {
  const factory RouteStateError({@required String message}) = _$RouteStateError;

  String get message;
  @JsonKey(ignore: true)
  $RouteStateErrorCopyWith<RouteStateError> get copyWith;
}
