import 'package:final_project/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:final_project/pages/friends.dart';
import 'package:final_project/pages/profile.dart';
import 'package:final_project/pages/editprofile.dart';
import 'package:final_project/pages/chatscreen.dart';
import 'package:final_project/pages/status.dart';
import 'package:final_project/pages/calls.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
  List<Friend> friends = [
    Friend(name: 'James', lastmsg: 'how r u doing', photo: 'James.png', time: '6:23PM'),
    Friend(name: 'Angela', lastmsg: 'hi', photo: 'Angela.png', time: '6:00PM'),
    Friend(name: 'Jacob', lastmsg: 'how was the meet', photo: 'Jacob.png', time: '5:32PM'),
    Friend(name: 'Adam', lastmsg: 'It was fun!!', photo: 'Adam.png', time: '4:45PM'),
    Friend(name: 'Julia', lastmsg: 'bye..', photo: 'Julia.png', time: '4:22PM'),
    Friend(name: 'Justin', lastmsg: 'great!', photo: 'justin.png', time: '11:47AM'),
    Friend(name: 'Max', lastmsg: "let's meet at 8", photo: 'Max.png', time: '11:12AM'),
    Friend(name: 'Peter', lastmsg: 'good', photo: 'Peter.png', time: '10:00AM'),
    Friend(name: 'Missy', lastmsg: "It's fine", photo: 'Missy.png', time: '9:34AM'),
    Friend(name: 'Suzy', lastmsg: 'bye', photo: 'Suzy.png', time: '8:33PM'),
    Friend(name: 'Alia', lastmsg: 'Good Morning', photo: 'Alia.png', time: '6:48AM'),
    Friend(name: 'anushka', lastmsg: 'Morning..', photo: 'anushka.png', time: '6:00AM'),
    Friend(name: 'arjun', lastmsg: 'Good Night', photo: 'arjun.png', time: 'yersterday'),
    Friend(name: 'isha', lastmsg: 'It was fun!!', photo: 'isha.png', time: 'yersterday'),
    Friend(name: 'Naina', lastmsg: 'bye..', photo: 'Naina.png', time: 'yersterday'),
    Friend(name: 'Nick', lastmsg: 'great!', photo: 'Nick.png', time: 'yersterday'),
    Friend(name: 'priyanka', lastmsg: "let's meet at 8", photo: 'priyanka.png', time: 'yersterday'),
    Friend(name: 'Tom', lastmsg: 'good', photo: 'Tom.png', time: '09/07/2024'),
    Friend(name: 'Tom Cruise', lastmsg: "It's fine", photo: 'Tom Cruise.png', time: '09/07/2024'),
    Friend(name: 'katie', lastmsg: 'bye', photo: 'katie.png', time: '09/07/2024')
  ];

  TextEditingController _searchController = TextEditingController();
  List<Friend> _filteredMessages = [];
  String name="pranay";
  String email="pranay677@gmail.com";

  @override
  void initState() {
    super.initState();
    _filteredMessages.addAll(friends);
  }

  void _filterMessages(String query) {
    setState(() {
      _filteredMessages = friends
          .where((friend) => friend.name?.toLowerCase().contains(query.toLowerCase()) ?? false)
          .toList();
    });
  }
  void _updateProfile(String newName, String newEmail) {
    setState(() {
      name = newName;
      email = newEmail;
    });
  }
  void _onItemTapped(int index){
    if (_selectedIndex != index) {
      switch (index) {
        case 0:
        // Navigate to Chats screen (HomeScreen)

          break;
        case 1:
        // Navigate to Status screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StatusScreen()),
          );
          break;
        case 2:
        // Navigate to Calls screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CallScreen()),
          );
          break;
      }
    } else {
      // If index is already selected, handle as per your requirement
      // For example, pop to the top of the stack, or scroll to top of list, etc.
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatApp"),
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: ChatSearchDelegate(friends));
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
                value: 'New group',
                child: TextButton(
                  onPressed: (){},
                  child: Text('New group',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                ),
              ),
              PopupMenuItem(
                value: 'New broadcast',
                child: TextButton(
                  onPressed: (){},
                  child: Text('New broadcast',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                ),
              ),
              PopupMenuItem(
                value: 'linked devices',
                child: TextButton(
                  onPressed: (){},
                  child: Text('Linked Devices',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                ),
              ),
              PopupMenuItem(
                value: 'addcontact',
                child: TextButton(
                  onPressed: (){},
                  child: Text('Add Contact',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                ),
              ),
              PopupMenuItem(
                value: 'settings',
                child: TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'/settings');
                  },
                  child: Text('Settings',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                ),
              )
            ],
          ),

        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _filteredMessages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                  child: Card(
                    elevation: 4.0,
                    child: ListTile(
                      onTap: () {
                        // Handle tap on list tile
                        Navigator.push(
                          (context),
                          MaterialPageRoute(
                              builder: (context)=>ChatScreen(
                                _filteredMessages[index],
                              )
                          ),
                        );
                      },
                      title: Text(_filteredMessages[index].name ?? 'Unknown Contact'),
                      subtitle: Text(_filteredMessages[index].lastmsg ?? '...'),
                      leading: InkWell(
                        onTap: () {
                          // Handle tap on circular button
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/${_filteredMessages[index].photo}'),
                            ),
                          ),
                        ),
                      ),
                      trailing: Text(_filteredMessages[index].time ?? ''),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                accountName: Text(
                  "$name",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("$email"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/profile.png'),
                      ),
                    ),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Profile(
                      name:name,
                      email:email,
                      onUpdate:_updateProfile,
                    ))
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(' Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_center_outlined),
              title: const Text(' Help'),
              onTap: () {
                Navigator.pushNamed(context, '/help');
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_album_outlined),
              title: const Text(' Saved photos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>EditProfilePage(
                      currentName:name,
                      currentEmail:email,
                      onUpdate:_updateProfile,
                    ))
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
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

class ChatSearchDelegate extends SearchDelegate<Friend> {
  final List<Friend> friends;

  ChatSearchDelegate(this.friends);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context,Friend(name: '', lastmsg: '', photo: '', time: '') );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final filteredFriends = friends
        .where((friend) => friend.name?.toLowerCase().contains(query.toLowerCase()) ?? false)
        .toList();

    return ListView.builder(
      itemCount: filteredFriends.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Card(
            elevation: 4.0,
            child: ListTile(
              onTap: () {
                // Handle tap on list tile
              },
              title: Text(filteredFriends[index].name ?? 'Unknown Contact'),
              leading: InkWell(
                onTap: () {
                  // Handle tap on circular button
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/${filteredFriends[index].photo}'),
                    ),
                  ),
                ),
              ),
              trailing: Text(filteredFriends[index].time ?? ''),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final filteredFriends = friends
        .where((friend) => friend.name?.toLowerCase().contains(query.toLowerCase()) ?? false)
        .toList();
    return ListView.builder(
      itemCount: filteredFriends.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Card(
            elevation: 4.0,
            child: ListTile(
              onTap: () {
                // Handle tap on list tile
              },
              title: Text(filteredFriends[index].name ?? 'Unknown Contact'),
              leading: InkWell(
                onTap: () {
                  // Handle tap on circular button
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/${filteredFriends[index].photo}'),
                    ),
                  ),
                ),
              ),
              trailing: Text(filteredFriends[index].time ?? ''),
            ),
          ),
        );
      },
    );
  }
}