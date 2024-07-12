import 'package:flutter/material.dart';
import 'package:final_project/pages/friends.dart';

class ChatScreen extends StatefulWidget {
  late Friend friend;
  ChatScreen(this.friend);
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  late Friend _friend;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _friend = widget.friend;
  }

  final List<String> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _handleSubmitted(String text) {
    _controller.clear();
    setState(() {
      _messages.insert(0, text);
    });
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme
          .of(context)
          .primaryColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _controller,
                onSubmitted: _handleSubmitted,
                decoration: InputDecoration.collapsed(
                    hintText: 'Send a message'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.attach_file),
                    onPressed: () {
                      // Add functionality for attach file button
                      print('Attach file button pressed');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {
                      // Add functionality for camera button
                      print('Camera button pressed');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {
                      // Add functionality for mic button
                      print('Mic button pressed');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => _handleSubmitted(_controller.text),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),

        title: Row(
          children: [
            InkWell(
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
                    image: AssetImage('assets/${_friend.photo}'),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("${_friend.name}"),
          ],
        ),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call_rounded),
            iconSize: 35,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
            iconSize: 30,
          ),
          PopupMenuButton <String>(
            onSelected: (value) {},
            itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Contact',
                child: TextButton(
                  onPressed: () {},
                  child: Text('View Contact'),
                  style: ButtonStyle(
                    // Customize button appearance
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 20.0), // Example: Set font size
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.deepPurpleAccent, // Example: Set text color
                    ),
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'media',
                child: TextButton(
                  onPressed: () {},
                  child: Text('Media, Links, Docs'),
                  style: ButtonStyle(
                    // Customize button appearance
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 20.0), // Example: Set font size
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.deepPurpleAccent, // Example: Set text color
                    ),
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Block',
                child: TextButton(
                  onPressed: () {},
                  child: Text('Block Contact'),
                  style: ButtonStyle(
                    // Customize button appearance
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 20.0), // Example: Set font size
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.deepPurpleAccent, // Example: Set text color
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],

      ),

      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) =>
                  ListTile(
                    title: Text(_messages[index]),
                  ),
            ),
          ),
          Divider(height: 1.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildTextComposer(),
          ),
        ],
      ),

      //Drawer
    );
  }
}
