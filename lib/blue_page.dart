import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Beamer.of(context).beamToNamed('/rainbow'),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
