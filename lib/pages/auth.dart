import 'package:flutter/material.dart';
import './constellations.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _id = '';
  String _pin = '';
  bool _acceptTerms = false;

  DecorationImage _buildBgImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/bg.jpg'),
      colorFilter:
          ColorFilter.mode(Colors.white.withOpacity(0.75), BlendMode.dstATop),
    );
  }

  Widget _buildAppTitleText() {
    return Text(
      'Constellations',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Widget _buildAstronomistField() {
    return TextField(
        decoration: InputDecoration(
            labelText: 'Astronomist ID', filled: true, fillColor: Colors.white),
        maxLines: 1,
        onChanged: (String val) {
          setState(() {
            _id = val;
          });
        });
  }

  Widget _buildPinField() {
    return TextField(
        decoration: InputDecoration(
            labelText: 'PIN', filled: true, fillColor: Colors.white),
        keyboardType: TextInputType.number,
        onChanged: (String val) {
          setState(() {
            _pin = val;
          });
        });
  }

  Widget _buildAcceptTermsSwitch() {
    return SwitchListTile(
      value: _acceptTerms,
      onChanged: (bool value) {
        setState(() {
          _acceptTerms = value;
        });
      },
      activeColor: Colors.lightBlueAccent,
      title: Text(
        'Accept Terms',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  void _submitForm() =>
      Navigator.pushReplacementNamed(context, '/constellations');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: _buildBgImage(),
        ),
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildAppTitleText(),
                SizedBox(
                  height: 16.0,
                ),
                _buildAstronomistField(),
                SizedBox(
                  height: 16.0,
                ),
                _buildPinField(),
                _buildAcceptTermsSwitch(),
                RaisedButton(
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                  child: Text('Login -->'),
                  onPressed: () => _submitForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
