import 'dart:async';

import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:bezier/bezier.dart' as bezier;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geodesy/geodesy.dart';
import 'package:int20h_test/bloc/ar_bloc/ar_event.dart';
import 'package:int20h_test/bloc/ar_bloc/ar_state.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';
import 'package:location/location.dart';
import 'package:rxdart/rxdart.dart';

import 'package:vector_math/vector_math.dart' as vector;
import 'package:vector_math/vector_math_64.dart' as vector64;
import 'dart:math';

final g = Geodesy();
final emptyMaterials = [ArCoreMaterial(color: Colors.transparent)];
final otherMaterials = [ArCoreMaterial(color: Colors.white)];
final beginFlagMaterials = [ArCoreMaterial(color: Colors.blue)];
final endFlagMaterials = [ArCoreMaterial(color: Colors.red)];

final rootNodeName = 'root';

int minIndex<T>(List<T> list, num compare(T v)) {
  var minI = 0;
  num minV = compare(list.first);
  for (var i = 1; i < list.length; i++) {
    final currV = compare(list[i]);
    if (minV < currV) continue;
    minI = i;
    minV = currV;
  }
  return minI;
}

extension LocationMapper on LocationData {
  LatLng toCoord() => LatLng(latitude, longitude);
}

extension QuaternionMapper on vector64.Quaternion {
  vector64.Vector4 toVector4() => vector64.Vector4(x, y, z, w);
}

vector64.Vector4 rotationVector(double yawD, double pitchD, double rollD) {
  final q = vector64.Quaternion.euler(
    vector64.radians(yawD),
    vector64.radians(pitchD),
    vector64.radians(rollD),
  );

  return vector64.Vector4(q.x, q.y, q.z, q.w);
}

vector64.Vector4 rotationVectorAxis(vector64.Vector3 axis) {
  final initVector = vector64.Vector3(0, 1, 0);
  final targetVector = axis.normalized();

  final q = vector64.Quaternion.fromTwoVectors(
    initVector,
    targetVector,
  );

  return q.toVector4();
}

vector64.Vector4 rotationVectorPlaneXZ(double heading) {}

ArCoreNode arrow({
  vector64.Vector3 position,
  vector64.Vector4 rotation,
  @required List<ArCoreMaterial> materials,
}) {
  final lenght = 1.0;
  final thickness = 0.1;
  final headDiagonal = 0.3;
  final headSide = headDiagonal / sqrt(3);

  return ArCoreNode(
    position: position,
    rotation: rotation,
    shape: ArCoreCube(
      size: vector64.Vector3(thickness, lenght, thickness),
      materials: materials,
    ),
    children: [
      ArCoreNode(
        position: vector64.Vector3(
          (thickness),
          (lenght) / 2,
          0,
        ),
        rotation: rotationVector(0, 0, 45),
        shape: ArCoreCube(
          size: vector64.Vector3(headSide, headSide, thickness),
          materials: materials,
        ),
      )
    ],
  );
}

ArCoreNode flag({
  vector64.Vector3 position,
  vector64.Vector4 rotation,
  @required List<ArCoreMaterial> materials,
  @required List<ArCoreMaterial> flagMaterials,
}) {
  final radius = 0.05;
  final height = 2.0;
  final flagHeight = 0.3;
  final flagLength = 0.5;
  return ArCoreNode(
    position: position,
    rotation: rotation,
    shape: ArCoreCylinder(
      height: radius,
      radius: height,
      materials: materials,
    ),
    children: [
      ArCoreNode(
        position: vector64.Vector3(
          flagLength / 2,
          (height - flagHeight) / 2,
          0,
        ),
        shape: ArCoreCube(
          materials: flagMaterials,
          size: vector64.Vector3(flagLength, flagHeight, radius),
        ),
      ),
    ],
  );
}

double getPositionAngle(
  LatLng from,
  LatLng to, [
  double heading = 0.0,
]) {
  final bearing = g.bearingBetweenTwoGeoPoints(from, to);
  final angle = bearing - heading;
  return angle;
}

vector64.Vector3 getPositionVector(
  LatLng from,
  LatLng to, [
  double heading = 0.0,
]) {
  final angleRad = vector64.radians(getPositionAngle(from, to, heading));
  final dist = g.distanceBetweenTwoGeoPoints(from, to);

  final v = vector64.Vector3(
    dist * sin(angleRad),
    0,
    -dist * cos(angleRad),
  );

  return v;
}

num distanceToLine(LatLng a, LatLng b, LatLng o) {
  return g.crossTrackDistanceTo(o, a, b);
}

ArCoreNode _computeNode({
  @required LocationData location,
  @required List<LatLng> route,
}) {
  final myLatLng = location.toCoord();

  final minI = minIndex(
    route,
    (v) => g.distanceBetweenTwoGeoPoints(myLatLng, v),
  );

  int nextI;

  if (minI == 0) {
    nextI = 1;
  } else if (minI == route.length - 1) {
    nextI = route.length - 1;
  } else {
    final distToPrevLine = distanceToLine(
      route[minI - 1],
      route[minI],
      myLatLng,
    );
    final distToNextLine = distanceToLine(
      route[minI],
      route[minI + 1],
      myLatLng,
    );

    nextI = distToPrevLine < distToNextLine ? minI : minI + 1;
  }

  final nextDist = g.distanceBetweenTwoGeoPoints(myLatLng, route[nextI]);

  final arrowDist = 2;

  final arrowPosition = getPositionVector(
    myLatLng,
    route[nextI],
    location.heading,
  )..scale(arrowDist / nextDist);

  final arrowRotation = rotationVectorAxis(arrowPosition);

  final flagVisibleDistance = 30.0;

  return ArCoreNode(
    name: rootNodeName,
    shape: ArCoreSphere(
      radius: double.minPositive,
      materials: emptyMaterials,
    ),
    children: [
      if (g.distanceBetweenTwoGeoPoints(myLatLng, route.first) <=
          flagVisibleDistance)
        flag(
          position: getPositionVector(
            myLatLng,
            route.first,
            location.heading,
          ),
          materials: otherMaterials,
          flagMaterials: beginFlagMaterials,
        ),
      if (g.distanceBetweenTwoGeoPoints(myLatLng, route.last) <=
          flagVisibleDistance)
        flag(
          position: getPositionVector(
            myLatLng,
            route.last,
            location.heading,
          ),
          materials: otherMaterials,
          flagMaterials: endFlagMaterials,
        ),
      arrow(
        position: arrowPosition,
        rotation: arrowRotation,
        materials: otherMaterials,
      ),
    ],
  );
}

class ArBloc extends Bloc<ArEvent, ArState> {
  ArBloc() : super(ArState.loading());

  @override
  Stream<ArState> mapEventToState(ArEvent event) async* {
    yield event.when(
      repeat: () => state,
      setRoute: (route) {
        final latLngRoute = route.overviewPath
            .map(
              (p) => LatLng(p.latitude, p.longitude),
            )
            .toList();

        return state.when(
          loading: () => ArState.data(route: latLngRoute),
          data: (prevNode, prevLoc, prevRoute) => ArState.data(
            route: latLngRoute,
            location: prevLoc,
            node: _computeNode(
              location: prevLoc,
              route: latLngRoute,
            ),
          ),
        );
      },
      setLocation: (location) {
        return state.when(
          loading: () => ArState.data(location: location),
          data: (prevNode, prevLoc, prevRoute) => ArState.data(
            route: prevRoute,
            location: location,
            node: _computeNode(
              location: location,
              route: prevRoute,
            ),
          ),
        );
      },
    );
  }
}
