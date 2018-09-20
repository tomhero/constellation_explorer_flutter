import 'package:flutter/material.dart';
import './constellation_create.dart';
import './constellation_list.dart';

class ConstellationAdminPage extends StatelessWidget {
  final Function addConstellation;
  final Function deleteConstellation;

  ConstellationAdminPage(this.addConstellation, this.deleteConstellation);

  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose!!'),
              ),
              ListTile(
              leading: Icon(Icons.timeline),
                title: Text('Home'),
                onTap: () => Navigator.pushReplacementNamed(context, '/constellations'),
              ),
            ],
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: _buildSideDrawer(context),
        appBar: AppBar(
          title: Text('Manage Constellations'),
          bottom: TabBar(
            labelColor: Colors.yellow,
            tabs: <Widget>[
              Tab(
                text: 'Create Constellation',
                icon: Icon(Icons.add_box),
              ),
              Tab(
                text: 'My Constellations',
                icon: Icon(Icons.list),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ConstellationCreatePage(addConstellation),
            ConstellationListPage()
          ],
        )
      ),
    );
  }
}
