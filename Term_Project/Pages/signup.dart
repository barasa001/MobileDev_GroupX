import 'package:flutter/material.dart';

void main() {
  runApp(SignupApp());
}

class SignupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Signup'),
          backgroundColor: Colors.blue,
        ),
        body: SignupPage(),
      ),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Signup',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SignupField('Email', 'Enter email...'),
            SignupField('Password', 'Enter password...'),
            SignupField('Full Name', 'Enter full name...'),
            SignupField('School', 'Enter school...'),
            SignupField('Specialization', 'Enter specialization...'),
            SignupField('Level', 'Enter level...'),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement signup functionality here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
              ),
              child: Text('SIGNUP'),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupField extends StatelessWidget {
  final String label;
  final String hintText;

  SignupField(this.label, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
