import 'package:vector_math/vector_math_64.dart';
import 'package:geodesy/geodesy.dart';
import 'dart:math';

final g = Geodesy();

const step = 3.0;

List<LatLng> getAllPointsBetween(LatLng from, LatLng to) {
  final dist = g.distanceBetweenTwoGeoPoints(from, to);

  final bearingBetween = g.bearingBetweenTwoGeoPoints(from, to);

  final amount = dist ~/ step;

  final lngStep = step * cos(bearingBetween);
  final latStep = step * sin(bearingBetween);

  return List.generate(
    amount,
    (i) => LatLng(
      from.latitude + i * latStep,
      from.longitude + i * lngStep,
    ),
  );
}

Vector3 getVectorBetween(LatLng from, LatLng to, [double heading = 0.0]) {
  final bearingBetween = g.bearingBetweenTwoGeoPoints(from, to) - heading;
  final dist = g.distanceBetweenTwoGeoPoints(from, to);

  return Vector3(dist * cos(bearingBetween), 0, dist * sin(bearingBetween));
}
