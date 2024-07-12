import 'package:flutter/material.dart';
import 'package:final_project/pages/editprofile.dart';
class Profile extends StatefulWidget {
  String? name;
  String? email;
  Function(String,String)? onUpdate;
  Profile({this.name,this.email, this.onUpdate});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? name;
  String? email;


  @override
  void initState() {

    super.initState();
    name = widget.name;
    email = widget.email;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Your Profile'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 8.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            SizedBox(height: 16),
            Text('Name: ${widget.name ?? 'No Name'}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Email: ${widget.email ?? 'No Email'}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text("About: IITK CS'27",style: TextStyle(fontSize: 18)),
            SizedBox(height:16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfilePage(
                      currentName: widget.name ?? '',
                      currentEmail: widget.email ?? '',
                      onUpdate: widget.onUpdate ,
                    ),
                  ),
                );
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

