import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            subtitle: Text('Security notifications, change number'),
            onTap: () {
              // Navigate to Account settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            subtitle: Text('Block contacts,diapperaing messages'),
            onTap: () {
              // Navigate to Privacy settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Avatar'),
            subtitle: Text('Create,edit ,profile photo'),
            onTap: () {
              // Navigate to Avatar settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chats'),
            subtitle: Text('Theme, wallpapers,chat history'),
            onTap: () {
              // Navigate to Chats settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            subtitle: Text('Message,group, &call tones'),
            onTap: () {
              // Navigate to Notifications settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.data_usage),
            title: Text('Storage and Data'),
            subtitle: Text('Network usage,auto- download'),
            onTap: () {
              // Navigate to Storage and Data settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('App Language'),
            subtitle: Text('English'),
            onTap: () {
              // Navigate to App Language settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            subtitle: Text('Help center, contact us,privacy policy'),
            onTap: () {
              // Navigate to Help screen
            },
          ),
        ],
      ),
    );
  }
}
