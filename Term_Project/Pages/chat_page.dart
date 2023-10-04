import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<String> messages = [];

  void sendMessage(String message) {
    setState(() {
      messages.add(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Message',
              ),
              onSubmitted: sendMessage,
            ),
          ),
        ],
      ),
    );
  }
}
```

In this example, the `ChatPage` class maintains a list of messages as its state. The `sendMessage` method is used to add new messages to the list. The `build` method displays the list of messages using a `ListView.builder` and provides a `TextField` at the bottom to enter new messages.