import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Beamer.of(context).beamToNamed('/blue'),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
