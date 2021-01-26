import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int20h_test/bloc/selected_route_bloc.dart/selected_route_state.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';

class SelectedRouteCubit extends Cubit<SelectedRouteState> {
  SelectedRouteCubit() : super(SelectedRouteState.loading());

  setRoute(DirectionsRoute route) {
    emit(SelectedRouteState(route: route));
  }
}
