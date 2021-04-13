import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'rainbow_page.dart';
import 'red_page.dart';
import 'blue_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _beamerKey = GlobalKey<BeamerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: BeamerRouteInformationParser(),
      routerDelegate: RootRouterDelegate(
        locationBuilder: SimpleLocationBuilder(routes: {
          '/': (_) => RedPage(),
          '/blue': (_) => BluePage(),
          '/rainbow': (_) => RainbowPage(),
          '/rainbow/:color': (_) => RainbowPage(),
        }),
      ),
    );
  }
}
