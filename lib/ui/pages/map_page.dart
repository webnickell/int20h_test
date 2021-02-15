import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:int20h_test/bloc/ar_bloc/ar_bloc.dart';
import 'package:int20h_test/bloc/ar_bloc/ar_event.dart';
import 'package:int20h_test/bloc/ar_bloc/ar_state.dart';
import 'package:int20h_test/bloc/points_bloc/points_cubit.dart';
import 'package:int20h_test/bloc/points_bloc/points_state.dart';
import 'package:int20h_test/bloc/route_bloc/route_bloc.dart';
import 'package:int20h_test/bloc/route_bloc/route_state.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';
import 'package:int20h_test/ui/pages/ar_page.dart';
import 'package:location/location.dart';

class MapPage extends StatefulWidget {
  MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

Color getRandomColor() {
  final r = Random();
  return Color.fromRGBO(r.nextInt(256), r.nextInt(256), r.nextInt(256), 1);
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
      body: Builder(
        builder: (context) => BlocBuilder<RouteBloc, RouteState>(
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
              polylines: routeState is RouteStateData
                  ? polylines(context, routeState)
                  : null,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
            ),
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              heroTag: "btn1",
              onPressed: _onGetLocation,
              child: Icon(Icons.gps_fixed),
            ),
            FloatingActionButton(
              heroTag: "btn2",
              onPressed: () {
                final arBloc = context.read<ArBloc>();
                final disabled = arBloc.state is ArStateLoading;
                if (disabled) {
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArPage()),
                );
              },
              child: Text('AR'),
            )
          ],
        ),
      ),
    );
  }

  Set<Polyline> polylines(BuildContext context, RouteStateData routeState) {
    return routeState.routes
        .map(
          (r) => Polyline(
            consumeTapEvents: true,
            zIndex: 10,
            width: 20,
            color: getRandomColor(),
            polylineId: PolylineId('$r'),
            points: r.overviewPath
                .map((p) => LatLng(
                      p.latitude,
                      p.longitude,
                    ))
                .toList(),
            onTap: () {
              final snackBar = SnackBar(content: Text('Route is selected!'));

              Scaffold.of(context).showSnackBar(snackBar);

              context.read<ArBloc>().add(ArEvent.setRoute(route: r));
            },
          ),
        )
        .toSet();
  }
}
