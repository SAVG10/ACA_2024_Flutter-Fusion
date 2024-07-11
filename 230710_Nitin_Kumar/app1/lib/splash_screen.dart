import 'dart:async';
import 'package:app1/main.dart';
import 'package:flutter/material.dart';


class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(
                flex: 21,
                child:  Center(
                  child: Image(image: AssetImage('gallery/logo.jpg'),
                  ),
              ),
              ),
              Expanded(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              )
            ],
          )
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Homepage(),)
      );
    });
  }
}