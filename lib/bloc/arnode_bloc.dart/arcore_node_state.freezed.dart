// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'arcore_node_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArCoreNodeStateTearOff {
  const _$ArCoreNodeStateTearOff();

// ignore: unused_element
  _ArCoreNodeState call({List<ArCoreNode> nodes}) {
    return _ArCoreNodeState(
      nodes: nodes,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ArCoreNodeState = _$ArCoreNodeStateTearOff();

/// @nodoc
mixin _$ArCoreNodeState {
  List<ArCoreNode> get nodes;

  @JsonKey(ignore: true)
  $ArCoreNodeStateCopyWith<ArCoreNodeState> get copyWith;
}

/// @nodoc
abstract class $ArCoreNodeStateCopyWith<$Res> {
  factory $ArCoreNodeStateCopyWith(
          ArCoreNodeState value, $Res Function(ArCoreNodeState) then) =
      _$ArCoreNodeStateCopyWithImpl<$Res>;
  $Res call({List<ArCoreNode> nodes});
}

/// @nodoc
class _$ArCoreNodeStateCopyWithImpl<$Res>
    implements $ArCoreNodeStateCopyWith<$Res> {
  _$ArCoreNodeStateCopyWithImpl(this._value, this._then);

  final ArCoreNodeState _value;
  // ignore: unused_field
  final $Res Function(ArCoreNodeState) _then;

  @override
  $Res call({
    Object nodes = freezed,
  }) {
    return _then(_value.copyWith(
      nodes: nodes == freezed ? _value.nodes : nodes as List<ArCoreNode>,
    ));
  }
}

/// @nodoc
abstract class _$ArCoreNodeStateCopyWith<$Res>
    implements $ArCoreNodeStateCopyWith<$Res> {
  factory _$ArCoreNodeStateCopyWith(
          _ArCoreNodeState value, $Res Function(_ArCoreNodeState) then) =
      __$ArCoreNodeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ArCoreNode> nodes});
}

/// @nodoc
class __$ArCoreNodeStateCopyWithImpl<$Res>
    extends _$ArCoreNodeStateCopyWithImpl<$Res>
    implements _$ArCoreNodeStateCopyWith<$Res> {
  __$ArCoreNodeStateCopyWithImpl(
      _ArCoreNodeState _value, $Res Function(_ArCoreNodeState) _then)
      : super(_value, (v) => _then(v as _ArCoreNodeState));

  @override
  _ArCoreNodeState get _value => super._value as _ArCoreNodeState;

  @override
  $Res call({
    Object nodes = freezed,
  }) {
    return _then(_ArCoreNodeState(
      nodes: nodes == freezed ? _value.nodes : nodes as List<ArCoreNode>,
    ));
  }
}

/// @nodoc
class _$_ArCoreNodeState implements _ArCoreNodeState {
  const _$_ArCoreNodeState({this.nodes});

  @override
  final List<ArCoreNode> nodes;

  @override
  String toString() {
    return 'ArCoreNodeState(nodes: $nodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArCoreNodeState &&
            (identical(other.nodes, nodes) ||
                const DeepCollectionEquality().equals(other.nodes, nodes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nodes);

  @JsonKey(ignore: true)
  @override
  _$ArCoreNodeStateCopyWith<_ArCoreNodeState> get copyWith =>
      __$ArCoreNodeStateCopyWithImpl<_ArCoreNodeState>(this, _$identity);
}

abstract class _ArCoreNodeState implements ArCoreNodeState {
  const factory _ArCoreNodeState({List<ArCoreNode> nodes}) = _$_ArCoreNodeState;

  @override
  List<ArCoreNode> get nodes;
  @override
  @JsonKey(ignore: true)
  _$ArCoreNodeStateCopyWith<_ArCoreNodeState> get copyWith;
}
