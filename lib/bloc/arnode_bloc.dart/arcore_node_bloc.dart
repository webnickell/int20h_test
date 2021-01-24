import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int20h_test/bloc/route_bloc/route_bloc.dart';

class ArCoreNodeBloc extends Bloc {
  final RouteBloc routeBloc;

  ArCoreNodeBloc(this.routeBloc) : super(null);

  @override
  Stream mapEventToState(event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
