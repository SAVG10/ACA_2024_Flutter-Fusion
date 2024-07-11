
import 'package:chat_app_aca/screens/home_page.dart';
import 'package:chat_app_aca/screens/layout.dart';
import 'package:chat_app_aca/screens/login_page.dart';
import 'package:chat_app_aca/screens/maintenance_page.dart';
import 'package:chat_app_aca/screens/otp_page.dart';
import 'package:chat_app_aca/screens/registration_page.dart';
import 'package:chat_app_aca/screens/setting_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:get/get.dart';

Future<void> main() async {
  // i have made profilepage and the registrtain page
  // how to capture the image and upload it to the server is remaining
  // also all the api calls are remaining
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // final List<CameraDescription> cameras;

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const String initialRoute = "/register";
    return GetMaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: initialRoute,
      routes: {
        '/login': (context) => const LoginPage(),
        '/otp': (context) => const OtpPage(),
        '/home': (context) => const HomePage(),
        '/setting': (context) =>  SettingScreen(),
        // '/chat': (context) =>  ChatScreen(),
        '/layout': (context) =>  Layout(),
        '/maintenance': (context) => const MaintenancePage(),



        // '/home': (context) => const Dashboard(),
        '/register': (context) => const RegistrationPage(),
        // '/picture': (context) => const CapturePicPage(),
        // '/location': (context) => const LocationPage(),
      },
    );
  }
}