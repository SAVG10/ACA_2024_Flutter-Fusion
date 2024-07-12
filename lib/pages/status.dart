import 'package:flutter/material.dart';
class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  void _onItemTapped(int index){
    if(index ==0){
      Navigator.pop(context);
    }
    if(index==2){
      Navigator.pushReplacementNamed((context),'/calls');
    }
  }
  int _selectedIndex=1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status"),
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
          IconButton(
            icon:Icon(Icons.camera_alt),
            onPressed: (){},
          ),

          PopupMenuButton(
            onSelected: (value){

            },
            itemBuilder: (context)=> [
              PopupMenuItem(
                value: 'statusprivacy',
                child: TextButton(
                  onPressed: (){},
                  child: Text('Status privacy',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                ),
              ),
              PopupMenuItem(
                value: 'createchannel',
                child: TextButton(
                  onPressed: (){},
                  child: Text('Create Channel',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                ),
              ),
              PopupMenuItem(
                value: 'settings',
                child: TextButton(
                  onPressed: (){},
                  child: Text('Settings',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                ),
              ),
            ],
          ),

        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text('Status',
            style: TextStyle(fontSize: 30),),
          ListTile(
            leading: CircleAvatar(
              child:Icon(Icons.add),
              backgroundColor: Colors.deepPurple,
            ),
            title: Text('My Status',style: TextStyle(fontSize: 20),),
            subtitle: Text('Tap to add status'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_size_select_actual_rounded),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

