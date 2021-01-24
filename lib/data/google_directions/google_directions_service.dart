import 'dart:convert';

import 'package:http/http.dart' as http;

import 'google_directions_request.dart';
import 'google_directions_response.dart';

/// This service is used to calculate route between two points
class DirectionsService {
  static const _directionApiUrl =
      'https://maps.googleapis.com/maps/api/directions/json';

  static String _apiKey;

  /// Initializer of [GoogleMap].
  ///
  /// `Required` if `Directions API` on `Mobile device` will be needed.
  /// For other cases, could be ignored.
  static void init(String apiKey) => _apiKey = apiKey;

  /// Gets an google API key
  static String get apiKey => _apiKey;

  /// Calculates route between two points.
  ///
  /// `request` argument contains origin and destination points
  /// and also settings for route calculation.
  ///
  /// `callback` argument will be called when route calculations finished.
  Future<DirectionsResult> route(DirectionsRequest request) async {
    assert(() {
      if (request == null) {
        throw ArgumentError.notNull('request');
      }
      return true;
    }());

    final url = '$_directionApiUrl${request.toString()}&key=$apiKey';
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception(
          '${response.statusCode} (${response.reasonPhrase}), uri = ${response.request.url}');
    }

    final result = DirectionsResult.fromMap(json.decode(response.body));

    return result;
  }
}
