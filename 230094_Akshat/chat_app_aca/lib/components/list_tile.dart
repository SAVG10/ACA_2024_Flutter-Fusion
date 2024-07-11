import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name,chat;
  final String? recent;
  final urlpic;
  const ChatTile({
    super.key, required this.chat, required this.name,  this.recent,  this.urlpic
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.only(left: 16.0,right: 16),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 30,
              backgroundImage:
              Image.network(urlpic).image,
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name,style: TextStyle(
                        color: Colors.black,
                        fontFamily: ('Quicksand'),
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                    ),),
                    SizedBox(width: 100,),
                    Text('Tue',style: TextStyle(
                        color: Colors.black87
                    ),),
                  ],
                ),
                SizedBox(height: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(chat,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                      ),),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Color.fromARGB(255,12, 109, 253),
                      child: Text(recent ?? "",
                      style: TextStyle(fontSize: 10, color: Colors.white),),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
