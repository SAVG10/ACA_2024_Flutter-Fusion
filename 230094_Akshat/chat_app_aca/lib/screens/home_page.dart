import 'dart:convert';

import 'package:chat_app_aca/components/list_tile.dart';
import 'package:chat_app_aca/constants/color.dart';
import 'package:chat_app_aca/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _items = [];

  // Fetch content from the json file
Future<void> readJson() async {
final String response = await rootBundle.loadString('assets/data.json');
final data = await json.decode(response);
setState(() {
  _items = data["users"];
});
}

  void initState() {
    super.initState();
    readJson();

  }

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var bannerHeight = height / 4 - height / 20;

    return Scaffold(
       backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              ClipPath(
                clipper: BackgroundWaveClipper(),
                child: Container(
                  
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(stops: [0.3,0.98],  colors: [Color(0xFF407BFE),Color.fromARGB(255, 123, 160, 253)])
                  ),
                ),
              ),
              Positioned(
                top: bannerHeight/3.2,
                left: 10,
                child:  Text("ChatApp",
                style: GoogleFonts.lora(
                  textStyle: const TextStyle(
                    color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w700
                  )
                )
                )
                ),
               Positioned(
                 top: bannerHeight/1.6,
                child: const SearchBar(),)
            ]),
            _items.isNotEmpty 
            ? Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return ChatScreen(
                               urlpic:_items[index]["profilePicUrl"] ,
                      messages: _items[index]["chats"],
                      name: _items[index]["name"],
                            );
                          },
                        ));
                    },
                    child: ChatTile(
                      urlpic:_items[index]["profilePicUrl"] ,
                      recent: _items[index]["recentMessageCount"],
                      chat: _items[index]["chats"][0]["message"],
                      name: _items[index]["name"],
                      
                    ),
                  );
                }
              )
                ): Container()
        ],
      ),
    );
  }
}



class SearchBar extends StatelessWidget {
  final blue = AppColor.themeColor;
  final grey = const Color(0xFFF2F2F7);
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusColor: blue,
          focusedBorder: _border(blue),
          border: _border(blue),
          enabledBorder: _border(grey),
          hintText: 'Search Chats...',
          hintStyle: GoogleFonts.lora(
            fontSize: 15,
            fontWeight: FontWeight.w500
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        onFieldSubmitted: (value) {},
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(12),
      );
}

class BackgroundWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    final p0 = size.height * .96;
    path.lineTo(0.0, p0);

    final controlPoint = Offset(size.width * 0.4, size.height);
    final endPoint = Offset(size.width, size.height / 1.2);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(BackgroundWaveClipper oldClipper) => oldClipper != this;
}
