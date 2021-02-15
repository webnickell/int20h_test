import 'dart:async';

import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int20h_test/bloc/ar_bloc/ar_bloc.dart';
import 'package:int20h_test/bloc/ar_bloc/ar_event.dart';
import 'package:int20h_test/bloc/ar_bloc/ar_state.dart';
import 'package:location/location.dart';
import 'package:rxdart/rxdart.dart';

class ArPage extends StatefulWidget {
  @override
  _ArPageState createState() => _ArPageState();
}

class _ArPageState extends State<ArPage> {
  static const _kMinDistanceDelta = 2.0;
  LocationData _prevValue;
  StreamSubscription _sub;
  ArCoreController _controller;

  @override
  void initState() {
    super.initState();
    final location = Location();
    _sub = location.onLocationChanged.where((l) {
      if (_prevValue == null) return true;

      final d = g.distanceBetweenTwoGeoPoints(
        l.toCoord(),
        _prevValue.toCoord(),
      );
      return d > _kMinDistanceDelta;
    }).listen((event) {
      _prevValue = event;
      context.read<ArBloc>().add(ArEvent.setLocation(location: event));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Your route'),
        ),
        body: BlocListener<ArBloc, ArState>(
          cubit: context.read<ArBloc>(),
          listenWhen: (_, state) => state is ArStateData,
          listener: (ctx, state) async {
            final data = state as ArStateData;
            await _controller.removeNode(nodeName: rootNodeName);
            await _controller.addArCoreNode(data.node);
          },
          child: ArCoreView(
            onArCoreViewCreated: (ArCoreController controller) {
              _controller = controller;
              context.read<ArBloc>().add(ArEvent.repeat());
            },
          ),
        ),
      ),
    );
  }
}
