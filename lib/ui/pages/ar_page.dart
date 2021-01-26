import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geodesy/geodesy.dart';
import 'package:int20h_test/bloc/route_bloc/route_bloc.dart';
import 'package:int20h_test/bloc/route_bloc/route_state.dart';
import 'package:int20h_test/bloc/selected_route_bloc.dart/selected_route_cubit.dart';
import 'package:int20h_test/bloc/selected_route_bloc.dart/selected_route_state.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';
import 'package:int20h_test/util/formuls.dart';
import 'package:location/location.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
import 'dart:isolate';

class ArPageData {
  final List<vector.Vector3> allPath;
  final List<vector.Vector3> mitPath;
  final vector.Vector3 start;
  final vector.Vector3 end;

  ArPageData(this.allPath, this.mitPath, this.start, this.end);

  factory ArPageData.fromRoute(DirectionsRoute r, double heading) {
    final pathLatLng = r.overviewPath
        .map(
          (p) => LatLng(p.latitude, p.longitude),
        )
        .toList();

    final b = pathLatLng.first;
    final e = pathLatLng.last;

    final List<LatLng> allPath = [];

    for (var i = 0; i < pathLatLng.length - 1; i++) {
      final part = getAllPointsBetween(pathLatLng[i], pathLatLng[i + 1]);
      allPath.addAll(part);
    }

    final mPathVects =
        pathLatLng.map((p) => getVectorBetween(b, p, heading)).toList();

    return ArPageData(
      allPath.map((e) => getVectorBetween(b, e, heading)),
      mPathVects,
      getVectorBetween(b, b, heading),
      getVectorBetween(b, e, heading),
    );
  }
}

class ArPage extends StatefulWidget {
  @override
  _ArPageState createState() => _ArPageState();
}

class _ArPageState extends State<ArPage> {
  ArCoreController arCoreController;

  Future<ArPageData> _compute(DirectionsRoute rs, double heading) {
    return Future.value(ArPageData.fromRoute(rs, heading));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: BlocBuilder<SelectedRouteCubit, SelectedRouteState>(
          builder: (ctx, state) {
            if (state is SelectedRouteLoading) {
              return Center(child: CircularProgressIndicator());
            }

            return FutureBuilder(
                future: Location().getLocation(),
                builder: (ctx, AsyncSnapshot<LocationData> snapshot) {
                  if (snapshot.data == null) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return FutureBuilder(
                      future: _compute((state as SelectedRouteData).route,
                          snapshot.data.heading),
                      builder: (ctx, AsyncSnapshot<ArPageData> snapshot) {
                        if (snapshot.data == null) {
                          return Center(child: CircularProgressIndicator());
                        }
                        final data = snapshot.data;
                        return ArCoreView(
                          onArCoreViewCreated: (ArCoreController controller) {
                            arCoreController = controller;

                            _addAllPath(controller, data.allPath);
                            _addMinPath(controller, data.mitPath);
                            _addBeginEndPath(
                                controller, [data.start, data.end]);
                          },
                        );
                      });
                });
          },
        ),
      ),
    );
  }

  void _addAllPath(ArCoreController controller, List<vector.Vector3> list) {
    _addPath(controller, list, Colors.yellow, 0.1);
  }

  void _addMinPath(ArCoreController controller, List<vector.Vector3> list) {
    _addPath(controller, list, Colors.red, 0.2);
  }

  void _addBeginEndPath(
      ArCoreController controller, List<vector.Vector3> list) {
    _addPath(controller, list, Colors.blue, 0.5);
  }

  void _addPath(ArCoreController controller, List<vector.Vector3> list,
      Color color, double radius) {
    final material = ArCoreMaterial(color: color);
    final sphere = ArCoreSphere(
      materials: [material],
      radius: radius,
    );

    final nodes = list
        .map((v) => ArCoreNode(
              shape: sphere,
              position: v,
            ))
        .toList();

    final nodeP = ArCoreNode(
      shape: ArCoreSphere(
        materials: [ArCoreMaterial(color: Colors.transparent)],
        radius: 0,
      ),
      children: nodes,
      position: vector.Vector3(0, 0, 0),
    );
    controller.addArCoreNode(nodeP);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}
