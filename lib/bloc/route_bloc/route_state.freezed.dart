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
  RouteData call({@required List<DirectionsRoute> routes}) {
    return RouteData(
      routes: routes,
    );
  }

// ignore: unused_element
  RouteLoading loading() {
    return const RouteLoading();
  }

// ignore: unused_element
  RouteError error({@required String message}) {
    return RouteError(
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
    TResult $default(RouteData value), {
    @required TResult loading(RouteLoading value),
    @required TResult error(RouteError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(RouteData value), {
    TResult loading(RouteLoading value),
    TResult error(RouteError value),
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
abstract class $RouteDataCopyWith<$Res> {
  factory $RouteDataCopyWith(RouteData value, $Res Function(RouteData) then) =
      _$RouteDataCopyWithImpl<$Res>;
  $Res call({List<DirectionsRoute> routes});
}

/// @nodoc
class _$RouteDataCopyWithImpl<$Res> extends _$RouteStateCopyWithImpl<$Res>
    implements $RouteDataCopyWith<$Res> {
  _$RouteDataCopyWithImpl(RouteData _value, $Res Function(RouteData) _then)
      : super(_value, (v) => _then(v as RouteData));

  @override
  RouteData get _value => super._value as RouteData;

  @override
  $Res call({
    Object routes = freezed,
  }) {
    return _then(RouteData(
      routes:
          routes == freezed ? _value.routes : routes as List<DirectionsRoute>,
    ));
  }
}

/// @nodoc
class _$RouteData implements RouteData {
  const _$RouteData({@required this.routes}) : assert(routes != null);

  @override
  final List<DirectionsRoute> routes;

  @override
  String toString() {
    return 'RouteState(routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RouteData &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(routes);

  @JsonKey(ignore: true)
  @override
  $RouteDataCopyWith<RouteData> get copyWith =>
      _$RouteDataCopyWithImpl<RouteData>(this, _$identity);

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
    TResult $default(RouteData value), {
    @required TResult loading(RouteLoading value),
    @required TResult error(RouteError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(RouteData value), {
    TResult loading(RouteLoading value),
    TResult error(RouteError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RouteData implements RouteState {
  const factory RouteData({@required List<DirectionsRoute> routes}) =
      _$RouteData;

  List<DirectionsRoute> get routes;
  @JsonKey(ignore: true)
  $RouteDataCopyWith<RouteData> get copyWith;
}

/// @nodoc
abstract class $RouteLoadingCopyWith<$Res> {
  factory $RouteLoadingCopyWith(
          RouteLoading value, $Res Function(RouteLoading) then) =
      _$RouteLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteLoadingCopyWithImpl<$Res> extends _$RouteStateCopyWithImpl<$Res>
    implements $RouteLoadingCopyWith<$Res> {
  _$RouteLoadingCopyWithImpl(
      RouteLoading _value, $Res Function(RouteLoading) _then)
      : super(_value, (v) => _then(v as RouteLoading));

  @override
  RouteLoading get _value => super._value as RouteLoading;
}

/// @nodoc
class _$RouteLoading implements RouteLoading {
  const _$RouteLoading();

  @override
  String toString() {
    return 'RouteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RouteLoading);
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
    TResult $default(RouteData value), {
    @required TResult loading(RouteLoading value),
    @required TResult error(RouteError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(RouteData value), {
    TResult loading(RouteLoading value),
    TResult error(RouteError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RouteLoading implements RouteState {
  const factory RouteLoading() = _$RouteLoading;
}

/// @nodoc
abstract class $RouteErrorCopyWith<$Res> {
  factory $RouteErrorCopyWith(
          RouteError value, $Res Function(RouteError) then) =
      _$RouteErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$RouteErrorCopyWithImpl<$Res> extends _$RouteStateCopyWithImpl<$Res>
    implements $RouteErrorCopyWith<$Res> {
  _$RouteErrorCopyWithImpl(RouteError _value, $Res Function(RouteError) _then)
      : super(_value, (v) => _then(v as RouteError));

  @override
  RouteError get _value => super._value as RouteError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(RouteError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$RouteError implements RouteError {
  const _$RouteError({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RouteState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RouteError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $RouteErrorCopyWith<RouteError> get copyWith =>
      _$RouteErrorCopyWithImpl<RouteError>(this, _$identity);

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
    TResult $default(RouteData value), {
    @required TResult loading(RouteLoading value),
    @required TResult error(RouteError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(RouteData value), {
    TResult loading(RouteLoading value),
    TResult error(RouteError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RouteError implements RouteState {
  const factory RouteError({@required String message}) = _$RouteError;

  String get message;
  @JsonKey(ignore: true)
  $RouteErrorCopyWith<RouteError> get copyWith;
}
