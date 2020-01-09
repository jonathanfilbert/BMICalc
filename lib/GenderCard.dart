import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCard extends StatelessWidget {
  final String gender;

  GenderCard({this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            this.gender == 'male'
                ? FontAwesomeIcons.mars
                : FontAwesomeIcons.venus,
            size: 60.0,
          ),
        ),
        Text("${this.gender.toUpperCase()}"),
      ],
    );
  }
}
