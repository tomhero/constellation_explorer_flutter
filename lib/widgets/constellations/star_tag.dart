import 'package:flutter/material.dart';

class StarTag extends StatelessWidget {
  final int starCount;

  StarTag(this.starCount);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(5.0)),
      child: Text(
        '${starCount} 💫',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
