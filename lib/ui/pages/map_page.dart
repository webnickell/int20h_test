import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:int20h_test/bloc/points_bloc.dart/points_cubit.dart';
import 'package:int20h_test/bloc/points_bloc.dart/points_state.dart';
import 'package:int20h_test/bloc/route_bloc/route_bloc.dart';
import 'package:int20h_test/bloc/route_bloc/route_state.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';
import 'package:location/location.dart';

class MapPage extends StatefulWidget {
  MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  Future<LocationData> _getLocation() async {
    final location = Location();

    var _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    var _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    return await location.getLocation();
  }

  Future<void> _onGetLocation() async {
    final location = await _getLocation();
    if (location == null) return;
    context.read<PointsCubit>().setOrigin(
          GeoCoord(
            location.latitude,
            location.longitude,
          ),
        );

    final controller = await _controller.future;

    controller.animateCamera(
      CameraUpdate.newLatLng(LatLng(
        location.latitude,
        location.longitude,
      )),
    );
  }

  Future<void> _onMapTap(LatLng location) async {
    context.read<PointsCubit>().setDestination(
          GeoCoord(
            location.latitude,
            location.longitude,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test task for INT20H'),
      ),
      body: BlocBuilder<RouteBloc, RouteState>(
        builder: (_, routeState) => BlocBuilder<PointsCubit, PointsState>(
          builder: (_, points) => GoogleMap(
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            onTap: _onMapTap,
            markers: points.destination != null
                ? {
                    Marker(
                      markerId: MarkerId('destination'),
                      position: LatLng(
                        points.destination.latitude,
                        points.destination.longitude,
                      ),
                    ),
                  }
                : null,
            polylines: routeState is RouteData
                ? {
                    for (final r in routeState.routes)
                      Polyline(
                        polylineId: PolylineId('path'),
                        points: r.overviewPath
                            .map((p) => LatLng(
                                  p.latitude,
                                  p.longitude,
                                ))
                            .toList(),
                      ),
                  }
                : null,
            myLocationEnabled: true,
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: _onGetLocation,
              child: Icon(Icons.gps_fixed),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Text('AR'),
            ),
          ],
        ),
      ),
    );
  }
}
