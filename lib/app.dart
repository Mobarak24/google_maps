import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/map_view_screen.dart';
import 'view_model/location_view_model.dart';

class GoogleMap extends StatelessWidget {
  const GoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationViewModel(),
        ),
      ],
      child: const MaterialApp(
        title: "Google Map",
        home: MapView(),
      ),
    );
  }
}