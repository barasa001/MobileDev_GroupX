import 'package:flutter/material.dart';

void main() {
  runApp(StudyBudApp());
}

class StudyBudApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Study Bud'),
          backgroundColor: Colors.blue,
        ),
        body: StudyBudHomePage(),
      ),
    );
  }
}

class StudyBudHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Study Bud',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16.0), // Space below title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Add Profile Picture',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.0), // Space between text and box
              ],
            ),
            Container(
              width: 150.0, // Custom width for the box
              height: 100.0, // Box size
              color: Colors.grey, // Placeholder box color
              child: Center(
                child: Text(
                  'Choose Photo',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.0), // Space between box and button
            Container(
              width: 150.0, // Custom width for the button
              child: ElevatedButton(
                onPressed: () {
                  // Add your functionality here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                ),
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
