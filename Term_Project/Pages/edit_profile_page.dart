import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _nameController;
  TextEditingController _professionController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _professionController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _professionController.dispose();
    super.dispose();
  }

  void saveChanges() {
    // Perform the save operation here
    String newName = _nameController.text;
    String newProfession = _professionController.text;
    // Update the profile information with the new values
    // You can use a state management solution like Provider or Riverpod
    // to propagate the changes to other parts of the app
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _professionController,
              decoration: InputDecoration(
                labelText: 'Profession',
              ),
            ),
            SizedBox(height: 32),
            RaisedButton(
              child: Text('Save Changes'),
              onPressed: saveChanges,
            ),
          ],
        ),
      ),
    );
  }
}
```

In this example, the `EditProfilePage` class defines text fields for editing the name and profession. The `_nameController` and `_professionController` are `TextEditingController` instances used to retrieve the edited values. The `saveChanges` method is called when the "Save Changes" button is pressed, and you can perform the save operation and update the profile information as needed.