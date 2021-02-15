import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';

part 'points_state.freezed.dart';

@freezed
abstract class PointsState with _$PointsState {
  const PointsState._();

  const factory PointsState({
    GeoCoord origin,
    GeoCoord destination,
  }) = _PointsState;

  bool get hasTwoPoints => origin != null && destination != null;
}
