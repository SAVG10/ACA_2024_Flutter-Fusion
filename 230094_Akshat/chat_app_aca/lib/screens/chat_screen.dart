import 'package:chat_app_aca/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  final name, urlpic;
  List messages = [];
  ChatScreen({super.key,required this.messages, required this.name, required this.urlpic });

  @override
  Widget build(BuildContext context) {
     final List<String> menuTabItems = [
    "Media,links, and more",
    "Search",
    "Mute Notification",
    "Mute",
    "Wallpapers",
    "Report spam",
    "Clear Chat"
  ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
    color: Colors.white, //change your color here
  ),
        backgroundColor: AppColor.themeColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: Image.network(urlpic).image,
                      ),
                      const SizedBox(width: 10,),
                      Text(name,style: const TextStyle(
                        fontSize: 18,
                        fontFamily: ('Quicksand'),
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),),
                     const Spacer(),
                      const Icon(Icons.videocam_sharp,
                        color: Colors.white,
                      size: 28,
                      ),
                     const SizedBox(width: 12,),
                      const Icon(Icons.phone,
                        color: Colors.white,
                      size: 24,
                      ),
                      InkWell(
                              child: PopupMenuButton(
                  iconSize: 24,
                  icon: const Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => menuTabItems
                      .map(
                        (itemName) => PopupMenuItem(
                          value: itemName,
                          child: Text(itemName),
                        ),
                      )
                      .toList(),
                              ),
                            ),
                    ],
                  ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row( 
            //   children: [
            //     IconButton(onPressed: (){
            //       Navigator.pop(context);
            //     }, icon:const Icon(Icons.arrow_back_sharp)),
            //     CircleAvatar(
            //       radius: 25,
            //       backgroundImage: Image.network(urlpic).image,
            //     ),
            //     const SizedBox(width: 15,),
            //     Text(name,style: const TextStyle(
            //       fontSize: 18,
            //       fontFamily: ('Quicksand'),
            //       color: Colors.black
            //     ),),
            //    const Spacer(),
            //     const Icon(Icons.videocam_sharp,
            //       color: Colors.black54,
            //     size: 28,
            //     ),
            //    const SizedBox(width: 12,),
            //     const Icon(Icons.phone,
            //       color: Colors.black54,
            //     size: 24,
            //     ),
            //     InkWell(
            //             child: PopupMenuButton(
            // iconSize: 24,
            // icon: const Icon(
            //   Icons.more_vert_rounded,
            //   color: Colors.black54,
            // ),
            // itemBuilder: (context) => menuTabItems
            //     .map(
            //       (itemName) => PopupMenuItem(
            //         value: itemName,
            //         child: Text(itemName),
            //       ),
            //     )
            //     .toList(),
            //             ),
            //           ),
            //   ],
            // ),
            SizedBox(height: 12,),
            Expanded(
            flex: 1,
          child: ListView.builder(
           itemCount: messages.length,
            itemBuilder: (context, index) {
              return ChatBubble(text: messages[index]["message"], isCurrentUser: messages[index]["isCurrentUser"]);
            },
          ),
        ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8,right: 8),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color:const Color.fromARGB(153, 236, 240, 250)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height:40,
                        width: 40,
      
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child:const Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                   const SizedBox(width: 8,),
                    SizedBox(
      width: MediaQuery.of(context).size.width/1.5,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusColor: AppColor.themeColor,
          focusedBorder: _border(AppColor.themeColor),
          border: _border(Colors.grey),
          enabledBorder: _border(Colors.grey),
          hintText: 'Message...',
          hintStyle: GoogleFonts.lora(
            fontSize: 15,
            fontWeight: FontWeight.w500
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
        onFieldSubmitted: (value) {},
      ),
    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.send,color:  Colors.grey,),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
   OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(12),
      );
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.text,
    required this.isCurrentUser,
  });
  final String text;
  final bool isCurrentUser;

  @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    child: Align(
      alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
      child: DecoratedBox(
        // chat bubble decoration
        decoration: BoxDecoration(
          color: isCurrentUser ? AppColor.themeColor : Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            text,
            style: TextStyle(
              color: isCurrentUser ? Colors.white : Colors.black87,
            ),
            // style: Theme.of(context).textTheme.bodyText1!.copyWith(
            //     color: isCurrentUser ? Colors.white : Colors.black87),
          ),
        ),
      ),
    ),
  );
}
}
