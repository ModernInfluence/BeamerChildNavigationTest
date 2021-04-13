import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import './palette.dart';

class ColorLocation extends BeamLocation {
  ColorLocation(BeamState state) : super(state);

  @override
  List<String> get pathBlueprints => ['/rainbow/:color'];

  @override
  List<BeamPage> pagesBuilder(BuildContext context, BeamState state) {
    return [
      BeamPage(
        key: ValueKey('color-${state.pathParameters['color']}'),
        child: ColorWidget(state.pathParameters['color']),
      )
    ];
  }
}

class ColorWidget extends StatelessWidget {
  ColorWidget(this.backgroundColor);
  final String backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor == null
          ? Colors.black54
          : Pallete.buttons[backgroundColor],
    );
  }
}
