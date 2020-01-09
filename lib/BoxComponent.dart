import 'package:flutter/material.dart';

class BoxComponent extends StatefulWidget {
  final Widget child;
  final Color backgroundColor;

  BoxComponent({this.child, this.backgroundColor});

  @override
  _BoxComponentState createState() => _BoxComponentState();
}

class _BoxComponentState extends State<BoxComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: widget.backgroundColor,
          ),
          child: widget.child),
    );
  }
}
