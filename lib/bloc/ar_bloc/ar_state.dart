import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geodesy/geodesy.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';
import 'package:location/location.dart';

part 'ar_state.freezed.dart';

@freezed
abstract class ArState with _$ArState {
  const factory ArState.loading() = ArStateLoading;

  const factory ArState.data({
    ArCoreNode node,
    LocationData location,
    List<LatLng> route,
  }) = ArStateData;
}
