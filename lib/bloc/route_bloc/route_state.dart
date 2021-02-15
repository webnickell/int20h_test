import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';

part 'route_state.freezed.dart';

@freezed
abstract class RouteState with _$RouteState {
  const factory RouteState({
    @required List<DirectionsRoute> routes,
  }) = RouteStateData;

  const factory RouteState.loading() = RouteStateLoading;

  const factory RouteState.error({
    @required String message,
  }) = RouteStateError;
}
