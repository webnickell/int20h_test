import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int20h_test/bloc/points_bloc.dart/points_cubit.dart';
import 'package:int20h_test/bloc/route_bloc/route_bloc.dart';
import 'package:int20h_test/data/google_directions/google_directions.dart';
import 'package:int20h_test/ui/pages/map_page.dart';
import 'package:location/location.dart';

import 'bloc/selected_route_bloc.dart/selected_route_cubit.dart';
import 'ui/pages/ar_page.dart';

void main() {
  DirectionsService.init('AIzaSyBHv9oUtC-pAi-tb1ftPLAal7VSDC9xHtI');
  final directions = DirectionsService();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => PointsCubit()),
        BlocProvider(
          create: (ctx) => RouteBloc(
            pointsCubit: ctx.read<PointsCubit>(),
            directions: directions,
          ),
        ),
        BlocProvider(
          create: (ctx) => SelectedRouteCubit(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MapPage();
  }
}
