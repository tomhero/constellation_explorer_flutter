import 'package:flutter/material.dart';
import './constellation_card.dart';

class Constellations extends StatelessWidget {
  final List<Map<String, dynamic>> constellations;

  Constellations(this.constellations);

  Widget _buildConstellationList() {
    return constellations.length > 0
        ? ListView.builder(
            itemBuilder: (BuildContext context, int index) =>
                ConstellationCard(constellations[index], index),
            itemCount: constellations.length,
          )
        : Center(
            child: Text('No Constellation found!!'),
          );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildConstellationList();
  }
}
