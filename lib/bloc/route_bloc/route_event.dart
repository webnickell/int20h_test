import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';

part 'route_event.freezed.dart';

@freezed
abstract class RouteEvent with _$RouteEvent {
  const factory RouteEvent.loadRoute({
    @required GeoCoord origin,
    @required GeoCoord destination,
  }) = LoadRouteEvent;
}
