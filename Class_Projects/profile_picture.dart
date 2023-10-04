import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Study Bud App'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome to Study Bud!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0), // Add spacing

          // Profile picture text enclosed in a rectangle
          Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                'Choose Your Profile Picture',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                ),
              ),
            ),
          ),

          SizedBox(height: 20.0), // Add spacing

          // Save button
          RaisedButton(
            onPressed: () {
              // Add your save button functionality here
              // This is just a placeholder.
              print('Save button pressed');
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
