import 'package:flutter/material.dart';

class StudyBudPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Heading
            Text(
              'Study Bud',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            // Image
            Image.asset('Images/study.jpeg'),
            // Button
            ElevatedButton(
              onPressed: () {},
              child: Text('SIGNUP'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
            ),
            // Text below button
            Text(
              'ALREADY HAVE AN ACCOUNT?',
              style: TextStyle(
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudyBudPage(),
    );
  }
}
