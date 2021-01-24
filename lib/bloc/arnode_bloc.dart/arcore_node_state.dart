import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'arcore_node_state.freezed.dart';

@freezed
abstract class ArCoreNodeState with _$ArCoreNodeState {
  const factory ArCoreNodeState({List<ArCoreNode> nodes}) = _ArCoreNodeState;
}
