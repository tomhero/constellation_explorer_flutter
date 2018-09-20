import 'package:flutter/material.dart';

class ConstellationCreatePage extends StatefulWidget {
  final Function addConstellation;

  ConstellationCreatePage(this.addConstellation);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ConstellationCreatePageState();
  }
}

class _ConstellationCreatePageState extends State<ConstellationCreatePage> {
  String _title;
  String _desc;
  int _stars;

  Widget _buildTitleField() {
    return TextField(
        decoration: InputDecoration(labelText: 'Constellation title'),
        onChanged: (String val) {
          setState(() {
            _title = val;
          });
        });
  }

  Widget _buildDescField() {
    return TextField(
        decoration: InputDecoration(labelText: 'Constellation Description'),
        maxLines: 3,
        onChanged: (String val) {
          setState(() {
            _desc = val;
          });
        });
  }

  void _submitForm() {
    final Map<String, dynamic> contellation = {
      'title': _title,
      'desc': _desc,
      'stars': _stars,
      'image': 'assets/star_pic.jpg',
    };
    widget.addConstellation(contellation);
    Navigator.pushReplacementNamed(context, '/constellations');
  }

  Widget _buildStarsField() {
    return TextField(
        decoration: InputDecoration(labelText: 'Star Count'),
        keyboardType: TextInputType.number,
        onChanged: (String val) {
          setState(() {
            _stars = int.parse(val);
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            _buildTitleField(),
            _buildDescField(),
            _buildStarsField(),
            SizedBox(
              height: 16.0,
            ),
            RaisedButton(
              child: Text('Save'),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () => _submitForm(),
            )
          ],
        ));
  }
}
