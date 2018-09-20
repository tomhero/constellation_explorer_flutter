import 'package:flutter/material.dart';

class ConstellationQoute extends StatelessWidget {
  final String qoute;

  ConstellationQoute(this.qoute);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.amberAccent, width: 2.0),
          borderRadius: BorderRadius.circular(5.0)),
      child: Padding(
        child: Text(qoute),
        padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.5),
      ),
    );
  }
}
