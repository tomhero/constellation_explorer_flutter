import 'package:flutter/material.dart';
import 'dart:async';
import '../widgets/ui_elements/title_default.dart';

class ConstellationPage extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String desc;

  ConstellationPage(this.title, this.imgUrl, this.desc);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text('Are you sure?'),
              content: Text('This action can\'t be undone!'),
              actions: <Widget>[
                FlatButton(
                  child: Text('DISCARD'),
                  onPressed: () => Navigator.pop(context),
                ),
                FlatButton(
                    child: Text('CONTINUE'),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context, true);
                    })
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        print('Back Button pressed!!');
        // prevent return null Future!!
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Detail Page'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imgUrl),
            Container(
              padding: EdgeInsets.all(16.0),
              child: TitleDefalut(title),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.blueGrey),
            )
            // Container(
            //   padding: EdgeInsets.all(10.0),
            //   child: RaisedButton(
            //     color: Theme.of(context).primaryColorLight,
            //     child: Text('BACK'),
            //     onPressed: () => Navigator.pop(context, false),
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.all(10.0),
            //   child: RaisedButton(
            //     color: Colors.red[100],
            //     child: Text('DESTROY'),
            //     onPressed: () => _showWarningDialog(context),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
