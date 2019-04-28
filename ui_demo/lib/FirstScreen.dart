import 'package:flutter/material.dart';
import './SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: new AppBar(
            title: new Text('First Screen'),
          ),
          body: new Center(
            child: new RaisedButton(
              child: new Text('Launch new screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new SecondScreen()),
                );
              },
            ),
          ),
        );
  }
}
