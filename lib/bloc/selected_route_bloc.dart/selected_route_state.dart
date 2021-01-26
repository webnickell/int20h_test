import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';

part 'selected_route_state.freezed.dart';

@freezed
abstract class SelectedRouteState with _$SelectedRouteState {
  const factory SelectedRouteState({@required DirectionsRoute route}) =
      SelectedRouteData;
  const factory SelectedRouteState.loading() = SelectedRouteLoading;
}
