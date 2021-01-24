import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';

part 'route_state.freezed.dart';

@freezed
abstract class RouteState with _$RouteState {
  const factory RouteState({
    @required List<DirectionsRoute> routes,
  }) = RouteData;

  const factory RouteState.loading() = RouteLoading;

  const factory RouteState.error({
    @required String message,
  }) = RouteError;
}
