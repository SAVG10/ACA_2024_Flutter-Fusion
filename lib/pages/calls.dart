import 'package:flutter/material.dart';
import 'package:final_project/pages/friends.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}


class _CallScreenState extends State<CallScreen> {
  int _selectedIndex=2;
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
  void _onItemTapped(int index){
    if(index==0){
      Navigator.pop(context);
    }else if(index==1){
      Navigator.pushReplacementNamed((context), '/updates');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('calls'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _filteredMessages.length,
              itemBuilder: (context, index) {
                bool isMultipleOfTwoOrThree = (index % 2 == 0 || index % 3 == 0);
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                  child: Card(
                    elevation: 4.0,
                    child: ListTile(
                      onTap: () {
                        // Handle tap on list tile
                      },
                      title: Text(_filteredMessages[index].name ?? 'Unknown Contact'),
                      subtitle: Text(_filteredMessages[index].time ?? '...'),
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
                      trailing: isMultipleOfTwoOrThree
                          ? Icon(Icons.call) // Replace with your desired trailing widget
                          : Icon(Icons.video_call),
                    ),
                  ),
                );
              },
            ),
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

