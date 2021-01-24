import 'package:flutter/material.dart';

/// A pair of latitude and longitude coordinates, stored as degrees.
class GeoCoord {
  /// Creates a geographical location specified in degrees [latitude] and
  /// [longitude].
  ///
  /// The latitude is clamped to the inclusive interval from -90.0 to +90.0.
  ///
  /// The longitude is normalized to the half-open interval from -180.0
  /// (inclusive) to +180.0 (exclusive)
  const GeoCoord(double latitude, double longitude)
      : assert(latitude != null),
        assert(longitude != null),
        latitude =
            (latitude < -90.0 ? -90.0 : (90.0 < latitude ? 90.0 : latitude)),
        longitude = (longitude + 180.0) % 360.0 - 180.0;

  /// The latitude in degrees between -90.0 and 90.0, both inclusive.
  final double latitude;

  /// The longitude in degrees between -180.0 (inclusive) and 180.0 (exclusive).
  final double longitude;

  static GeoCoord fromList(List<num> list) => GeoCoord(
        list[0],
        list[1],
      );

  @override
  String toString() => '$runtimeType($latitude, $longitude)';

  @override
  bool operator ==(Object o) {
    return o is GeoCoord && o.latitude == latitude && o.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode + longitude.hashCode;
}

/// A latitude/longitude aligned rectangle.
///
/// The rectangle conceptually includes all points (lat, lng) where
/// * lat ∈ [`southwest.latitude`, `northeast.latitude`]
/// * lng ∈ [`southwest.longitude`, `northeast.longitude`],
///   if `southwest.longitude` ≤ `northeast.longitude`,
/// * lng ∈ [-180, `northeast.longitude`] ∪ [`southwest.longitude`, 180],
///   if `northeast.longitude` < `southwest.longitude`
class GeoCoordBounds {
  /// Creates geographical bounding box with the specified corners.
  ///
  /// The latitude of the southwest corner cannot be larger than the
  /// latitude of the northeast corner.
  GeoCoordBounds({@required this.southwest, @required this.northeast})
      : assert(southwest != null),
        assert(northeast != null),
        assert(southwest.latitude <= northeast.latitude);

  /// The southwest corner of the rectangle.
  final GeoCoord southwest;

  /// The northeast corner of the rectangle.
  final GeoCoord northeast;

  /// Returns whether this rectangle contains the given [GeoCoord].
  bool contains(GeoCoord point) {
    return _containsLatitude(point.latitude) &&
        _containsLongitude(point.longitude);
  }

  bool _containsLatitude(double lat) {
    return (southwest.latitude <= lat) && (lat <= northeast.latitude);
  }

  bool _containsLongitude(double lng) {
    if (southwest.longitude <= northeast.longitude) {
      return southwest.longitude <= lng && lng <= northeast.longitude;
    } else {
      return southwest.longitude <= lng || lng <= northeast.longitude;
    }
  }

  @override
  String toString() {
    return '$runtimeType($southwest, $northeast)';
  }

  @override
  bool operator ==(Object o) {
    return o is GeoCoordBounds &&
        o.southwest == southwest &&
        o.northeast == northeast;
  }

  @override
  int get hashCode => southwest.hashCode + northeast.hashCode;
}

/// Represents an enum of various travel modes.
///
/// The valid travel modes that can be specified in a
/// `DirectionsRequest` as well as the travel modes returned
/// in a `DirectionsStep`. Specify these by value, or by using
/// the constant's name.
class TravelMode {
  const TravelMode(this._name);

  final String _name;

  static final values = <TravelMode>[bicycling, driving, transit, walking];

  /// Specifies a bicycling directions request.
  static const bicycling = TravelMode('bicycling');

  /// Specifies a driving directions request.
  static const driving = TravelMode('driving');

  /// Specifies a transit directions request.
  static const transit = TravelMode('transit');

  /// Specifies a walking directions request.
  static const walking = TravelMode('walking');

  @override
  int get hashCode => _name.hashCode;

  @override
  bool operator ==(dynamic other) =>
      other is TravelMode && _name == other._name;

  @override
  String toString() => '$_name';
}
