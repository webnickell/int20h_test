import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';

import 'points_state.dart';

class PointsCubit extends Cubit<PointsState> {
  PointsCubit() : super(const PointsState());

  void setOrigin(GeoCoord origin) => emit(state.copyWith(origin: origin));
  void setDestination(GeoCoord destination) => emit(state.copyWith(
        destination: destination,
      ));
}
