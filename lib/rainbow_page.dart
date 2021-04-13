import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import './color.dart';
import './palette.dart';

class RainbowPage extends StatelessWidget {
  final _beamerKey = GlobalKey<BeamerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Pallete.buttons.keys.map((String name) {
              return ElevatedButton(
                onPressed: () {
                  _beamerKey.currentState.routerDelegate
                      .beamToNamed('/rainbow/$name');
                },
                child: Text(
                  name.toUpperCase(),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Pallete.buttons[name], // background
                  onPrimary: Colors.black, // foreground
                ),
              );
            }).toList(),
          ),
          Expanded(
            child: Beamer(
              key: _beamerKey,
              routerDelegate: BeamerRouterDelegate(
                locationBuilder: (state) {
                  return ColorLocation(state);
                },
              ),
            ),
          ),
          Column(
            children: 'Side Content Vertically'
                .split('')
                .map((e) => Text(e))
                .toList(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Beamer.of(context).beamToNamed('/red'),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
