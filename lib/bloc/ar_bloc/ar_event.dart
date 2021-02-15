import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';
import 'package:location/location.dart';

part 'ar_event.freezed.dart';

@freezed
abstract class ArEvent with _$ArEvent {
  const factory ArEvent.setRoute({@required DirectionsRoute route}) =
      ArEventSetRoute;
  const factory ArEvent.setLocation({@required LocationData location}) =
      ArEventSetLocation;
  const factory ArEvent.repeat() = ArEventRepeat;
}
