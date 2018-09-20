import 'package:flutter/material.dart';

class ConstellationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.format_list_bulleted),
            Text('   Constellation list!!')
          ],
        ),
      ),
    );
  }

}