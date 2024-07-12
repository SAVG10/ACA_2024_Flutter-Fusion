import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _buildHelpSection('Getting Started', [
            'Creating an Account',
            'Logging In',
            'Updating Profile',
          ]),
          _buildHelpSection('Using the Chat Features', [
            'Starting a New Chat',
            'Searching for Contacts',
            'Sending Messages',
            'Deleting Messages',
          ]),
          _buildHelpSection('Managing Contacts', [
            'Adding New Contacts',
            'Blocking/Unblocking Contacts',
          ]),
          _buildHelpSection('Settings and Customization', [
            'Account Settings',
            'Privacy Settings',
            'Notification Settings',
            'Language Settings',
          ]),
          _buildHelpSection('Common Issues and Troubleshooting', [
            'Login Issues',
            'Connectivity Problems',
            'App Crashes',
            'Message Sending Failures',
          ]),
          _buildHelpSection('Security and Privacy', [
            'Data Security',
            'Report Abuse',
          ]),
          _buildHelpSection('Contact Support', [
            'Getting Help',
            'FAQ',
          ]),
        ],
      ),
    );
  }

  Widget _buildHelpSection(String title, List<String> items) {
    return ExpansionTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      children: items.map((item) => ListTile(title: Text(item))).toList(),
    );
  }
}
