import 'package:flutter/material.dart';

class ConstellationControl extends StatelessWidget {
  final Function addConstellation;

  ConstellationControl(this.addConstellation);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        addConstellation({'title': 'some star', 'image': 'assets/star_pic.jpg'});
      },
      child: Text('star like'),
    );
  }
}
