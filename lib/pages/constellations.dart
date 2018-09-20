import 'package:flutter/material.dart';
// import '../constellation_provider.dart';
import '../widgets/constellations/constellations.dart';

class ConstellationsPage extends StatelessWidget {
  final List<Map<String, dynamic>> constellations;

  ConstellationsPage(this.constellations);

  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              leading: Icon(Icons.mode_edit),
              title: Text('Manage Constellation'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            ),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('JustList'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.favorite), onPressed: () {},
          )
        ],
      ),
      drawer: _buildSideDrawer(context),
      body: Constellations(constellations),
    );
  }
}
