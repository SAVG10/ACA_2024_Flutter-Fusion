// lib/screens/chat_dashboard.dart
import 'package:flutter/material.dart';

class ChatDashboard extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {'name': 'John Doe', 'lastMessage': 'Hey, how are you?', 'time': '10:30 AM'},
    {'name': 'Jane Smith', 'lastMessage': 'Let’s catch up later.', 'time': '09:15 AM'},
    // Add more contacts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Dashboard'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings), onPressed: () {
            Navigator.pushNamed(context, '/settings');
          }),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(child: Text(contact['name']![0])),
            title: Text(contact['name']!),
            subtitle: Text(contact['lastMessage']!),
            trailing: Text(contact['time']!),
            onTap: () {
              Navigator.pushNamed(context, '/chat_screen', arguments: contact['name']);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
    );
  }
}
