
import 'package:app1/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget{
  Myapp({super.key});
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}

class Homepage extends StatefulWidget{
  Homepage({Key? key}) : super(key:key);

  @override
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<Homepage>{

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text('Chat ',style: TextStyle(
                  fontFamily: 'Knewave',
                  fontSize: 30,
                  color: Colors.green
              ),),
              const Text('MAX',style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
              ),),
              const SizedBox(width: 135,),
              PopupMenuButton(itemBuilder: (context) {
                return menu_opt.map((val)=> PopupMenuItem(
                  value: val,
                  child: Text(val,style: const TextStyle(fontSize: 17),),
                )).toList();
              },

              )
            ],
          ),
          backgroundColor: const Color(0xffBEE2EA),
          bottom: TabBar(
            tabs: [
              Tab(icon: Image.asset('gallery/chat.png',),),
              Tab(icon: Image.asset('gallery/diversity.png'),),
              Tab(icon: Image.asset('gallery/news.png'),),
            ],
            indicatorColor: Colors.deepPurple,
          ),
          toolbarHeight: 60,
          toolbarOpacity: 0.6,
        ),


        drawer: Drawer(                   //DRAWER
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff7476f7),
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color(0xff7476f7)),
                  accountName: Row(
                    children: [
                      Text(
                        "Rohit Sharma",
                        style: TextStyle(fontSize: 18),
                      ),
                      // IconButton(
                      //   onPressed: (){},
                      //   icon: Icon(Icons.edit,color: Colors.black,),
                      // )
                    ],
                  ),
                  accountEmail: Text("hitman264@gmail.com"),
                  currentAccountPictureSize: Size.square(45),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color(0xffacaefa),
                    child: Text(
                      "R",
                      style: TextStyle(fontSize: 30.0, color: Colors.black),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile '),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.data_saver_off),
                title: const Text('Data and Network'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.security),
                title: const Text('Security'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.devices),
                title: const Text('Connections'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.more),
                title: const Text('Others'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 250,
              ),
              ListTile(
                title: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('About',style: TextStyle(fontSize: 18),),
                      TextButton(onPressed: (){}, child: const Text('Us',style: TextStyle(color: Colors.blue,fontSize: 18))),
                    ],
                  ),
                ),
              )
            ],

          ),
        ),
        
        body: TabBarView(
          children: [
            ListView.builder(itemBuilder: (context, index) {      //CHAT TAB
              return Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: ListTile(
                  leading: const Icon(Icons.person,size: 50,),
                  title: Text(chat_arr[index],style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),),
                  subtitle: Text('chatting demo${index+1}',maxLines: 1,),
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  onTap: () {},
                  onLongPress: () {},
                  tileColor: Colors.amber[100],
                  selectedTileColor: Colors.amber[200],
                ),
              );
            },
              itemCount: chat_arr.length,

            ),

            ListView.builder(itemBuilder: (context, index) {        //COMMUNITY TAB
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(Icons.diversity_3_outlined,size: 50,),
                  title: Text(cmty_arr[index],style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),),
                  subtitle: const Text('Main data can be store in an array then fetched',maxLines: 1,),
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  onTap: () {},
                  onLongPress: () {},
                  tileColor: Colors.amber[300],
                ),
              );
            },
              itemCount: cmty_arr.length,
            ),

            ListWheelScrollView(          //NEWS TAB
              itemExtent: 300,
              children: List.generate(6, (index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: ListTile(
                    tileColor: const Color(0xffdee2fa),
                    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(70)),
                    title: const Text('Demo page\nMain Data fetched from internet'),
                    onTap: (){},

                  ),
                );
              },
              )
            )
          ],
        ),
      ),
    );
  }
}

var chat_arr = ['Hardik','Virat','Pant','Bumrah','Rahul','Garden Boy'];
var cmty_arr = ['BCCI','ICC'];
var menu_opt = ['New chat','New Group','Saved chats','Blocklist'];

