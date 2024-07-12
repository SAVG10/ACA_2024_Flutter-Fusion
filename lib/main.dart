import 'package:final_project/pages/editprofile.dart';
import 'package:final_project/pages/help.dart';
import 'package:flutter/material.dart';
import 'package:final_project/pages/homescreen.dart';
import 'package:final_project/pages/profile.dart';
import 'package:final_project/pages/settings.dart';
import 'package:final_project/pages/status.dart';
import 'package:final_project/pages/calls.dart';

void main() =>runApp(MaterialApp(
  title: 'ChatApp',
  theme: ThemeData(
    primarySwatch: Colors.purple,
    primaryColor: Colors.deepPurpleAccent,
  ),
  routes:{
    '/':(context)=>HomeScreen(),
    '/profile':(context)=>Profile(),
    '/calls':(context)=>CallScreen(),
    '/updates':(context)=>StatusScreen(),
    '/help':(context)=>HelpPage(),
    '/settings':(context)=>SettingsPage(),
  },
));
