import 'package:flutter/material.dart';

class TitleDefalut extends StatelessWidget {
  final String title;

  TitleDefalut(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      title,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
    );
  }
}
