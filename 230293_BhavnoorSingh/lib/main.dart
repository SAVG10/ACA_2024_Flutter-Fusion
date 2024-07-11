import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  home: Home()
));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '          L\nTalk-it- ive\n          ^',
                style: TextStyle(
                  fontFamily: 'IslandMoments',
                  fontSize: 80.0,
                  height: 0.6
                ),
              ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.5)
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder()
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ChatWindow();
                  }));
                },
                icon: Icon(
                  Icons.subdirectory_arrow_right,
                  color: Colors.black,
                ),
                label: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 220, 255, 145),
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
                )
              ),
              TextButton(
                onPressed: () {
                  print("Forgot Password");
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 196, 255)
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100.0, 20.0, 100.0, 10.0)
                )
              ),
              TextButton(
                onPressed: () {
                  print("Sign Up");
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 196, 255)
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0)
                )
              )
              
          ],
        ),
      ),
        
    );
  }
}

class ChatWindow extends StatelessWidget {
  const ChatWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/1.jpg'),
                    radius: 30.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Robert Linalg (Me)'
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.edit
                  ),
                  onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Profile();
            }));
          },
                )
              ],
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                fillColor: Colors.grey[800],
                border: OutlineInputBorder()
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/2.jpg'),
                      radius: 40.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rick',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0
                          ),
                        ),
                        Text(
                          'Hi! How are you doing?',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ), 
          Divider(
            height: 14.0,
          ),





          TextButton(
            onPressed: () {},
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/3.jpg'),
                      radius: 40.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0
                          ),
                        ),
                        Text(
                          'I am coming back to India!',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ), 
          Divider(
            height: 14.0,
          ),




          TextButton(
            onPressed: () {},
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/4.jpg'),
                      radius: 40.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Joshua',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0
                          ),
                        ),
                        Text(
                          'Need to go to the dentist.',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ), 
          Divider(
            height: 14.0,
          ),




          TextButton(
            onPressed: () {},
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/5.jpg'),
                      radius: 40.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gaurav',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0
                          ),
                        ),
                        Text(
                          'When are you coming?',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ), 
          Divider(
            height: 14.0,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {}, 
                child: Row(
                  children: [
                    Icon(
                      Icons.person_add_alt_1
                    ),
                    Text(
                      'Add New Contact'
                    )
                  ],
                  )),
              TextButton(
                onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Home();
            }));
          }, 
                child: Row(
                  children: [
                    Icon(
                      Icons.power_settings_new,
                      color: Colors.red[800],
                    ),
                    Text(
                      'Sign Out',
                      style: TextStyle(color: Colors.red[800]),
                    )
                  ],
                  ))
            ],
          )]
      ),
      
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/1.jpg'),
                radius: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(
                  'Robert Linalg',
                  style: TextStyle(
                    fontSize: 30.0
                  ),
                ),
                Icon(
                  Icons.edit
                )],
              ),
              Divider(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Gender',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0
                    ),
                  ),
                  Icon(
                    Icons.edit
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Male',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25.0
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0
                    ),
                  ),
                  Icon(
                    Icons.edit
                  )
                ],
              ),
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25.0,
                    ),
                    softWrap: true,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0
                    ),
                  ),
                  Icon(
                    Icons.edit
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '+91 98765 43210',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25.0
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'E-Mail',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0
                    ),
                  ),
                  Icon(
                    Icons.edit
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'abcd@randommail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25.0
                    ),
                  )
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const ChatWindow();
                    }));
                  }, 
                  child: Text(
                    'Back'
                  )),
                  TextButton.icon(
                  onPressed: () {}, 
                  icon: Icon(
                    Icons.delete_forever,
                    color: Colors.red[800],
                  ),
                  label: Text(
                    'Delete Account',
                    style: TextStyle(
                      color: Colors.red[800]
                    ),
                  )),                 
                  
                ],
              )],
          ),
        ),
      ),
    );
  }
}