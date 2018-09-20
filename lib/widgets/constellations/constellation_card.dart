import 'package:flutter/material.dart';
import './star_tag.dart';
import '../ui_elements/title_default.dart';
import './constellation_qoute.dart';

class ConstellationCard extends StatelessWidget {
  final Map<String, dynamic> constellation;
  final int index;

  ConstellationCard(this.constellation, this.index);

  Widget _buildTitleRow() {
    return Container(
      padding: EdgeInsets.only(top: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TitleDefalut(constellation['title']),
          SizedBox(
            width: 8.0,
          ),
          StarTag(constellation['stars'])
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          color: Theme.of(context).accentColor,
          icon: Icon(Icons.info_outline),
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/constellation/' + index.toString()),
        ),
        IconButton(
          color: Colors.pink,
          icon: Icon(Icons.favorite_border),
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset(constellation['image']),
          _buildTitleRow(),
          SizedBox(
            height: 12.0,
          ),
          ConstellationQoute('The Force will be with you. Always.'),
          _buildActionButtons(context),
        ],
      ),
    );
  }
}
