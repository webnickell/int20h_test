import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int20h_test/bloc/points_bloc.dart/points_cubit.dart';
import 'package:int20h_test/bloc/route_bloc/route_event.dart';
import 'package:int20h_test/bloc/route_bloc/route_state.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  final DirectionsService directions;
  final PointsCubit pointsCubit;
  StreamSubscription pointsSubscription;

  RouteBloc({
    @required this.pointsCubit,
    @required this.directions,
  }) : super(RouteState.loading()) {
    pointsSubscription = pointsCubit.listen((state) {
      if (!state.hasTwoPoints) return;
      add(RouteEvent.loadRoute(
        origin: state.origin,
        destination: state.destination,
      ));
    });
  }

  @override
  Future<void> close() async {
    super.close();
    pointsSubscription.cancel();
  }

  @override
  Stream<RouteState> mapEventToState(RouteEvent event) async* {
    if (event is LoadRouteEvent) {
      final req = DirectionsRequest(
        origin: '${event.origin.latitude},${event.origin.longitude}',
        destination:
            '${event.destination.latitude},${event.destination.longitude}',
      );
      yield RouteState.loading();

      final res = await directions.route(req);
      final err = res.errorMessage;
      if (err != null) {
        yield RouteState.error(message: err);
      } else {
        yield RouteState(routes: res.routes);
      }
    }
  }
}
