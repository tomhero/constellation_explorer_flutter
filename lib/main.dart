import 'package:flutter/material.dart';
import './pages/auth.dart';
import './pages/constellation_admin.dart';
import './pages/constellations.dart';
import './pages/constellation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _constellations = [];

  void _addConstellation(Map<String, dynamic> constellation) {
    setState(() {
      _constellations.add(constellation);
    });
  }

  void _deleteConstellation(int index) {
    setState(() {
      _constellations.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // home: AuthPage(),
      routes: {
        '/constellations': (BuildContext context) => ConstellationsPage(_constellations),
        '/' : (BuildContext context) => AuthPage(),
        '/admin': (BuildContext context) =>
            ConstellationAdminPage(_addConstellation, _deleteConstellation),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathEls = settings.name.split('/');
        if (pathEls[0] != '') {
          return null;
        }
        if (pathEls[1] == 'constellation') {
          final int index = int.parse(pathEls[2]); // 'constellation/2'
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ConstellationPage(
                _constellations[index]['title'],
                _constellations[index]['image'],
                _constellations[index]['desc']),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                ConstellationsPage(_constellations));
      },
    );
  }
}
