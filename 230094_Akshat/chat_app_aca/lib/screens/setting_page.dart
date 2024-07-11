import 'package:chat_app_aca/screens/maintenance_page.dart';
import 'package:chat_app_aca/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class _settingItem {
  final String title, desc;
  final Widget Screen;
  _settingItem({required this.title, required this.desc, required this.Screen});
}

class SettingScreen extends StatelessWidget {
  SettingScreen();

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var bannerHeight = height / 4 - height / 20;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: BackgroundWaveClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(stops: [
                      0.3,
                      0.98
                    ], colors: [
                      Color(0xFF407BFE),
                      Color.fromARGB(255, 123, 160, 253)
                    ])),
                  ),
                ),
                Positioned(
                    top: bannerHeight / 2.6,
                    child: Text("Setting",
                        style: GoogleFonts.lora(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w700)))),
              ]),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  'assets/images/avatar_m.png',
                  height: 60,
                  width: 60,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Akshat',
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'akshat@dev.com',
                      style: TextStyle(
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(LineAwesomeIcons.user_edit_solid),
                  ))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
           const Padding(
             padding:  EdgeInsets.symmetric(horizontal: 20),
             child:  Column(
              children: [
                 SettingMenuItem(
              heading: "Account",
              subheading: 'Security notifications, change number',
              icon: Icons.key,
                       ),
             SettingMenuItem(
              heading: "Privacy",
              subheading: 'Block contacts, disappearing messages',
              icon: Icons.lock,
                       ),
             SettingMenuItem(
              heading: "General",
              subheading: 'Language and Input Setting',
              icon: Icons.settings,
                       ),
             SettingMenuItem(
              heading: "General",
              subheading: 'Language and Input Setting',
              icon: Icons.settings,
                       ),
              ],
                       ),
           ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class SettingMenuItem extends StatelessWidget {
  final String heading, subheading;
  final IconData icon;
  const SettingMenuItem({
    super.key,
    required this.heading,
    required this.subheading,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MaintenancePage(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Colors.black12,
                offset: Offset(0, 2),
              )
            ]),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              icon,
              size: 29,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    subheading,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios_outlined),
            SizedBox(
              width: 4,
            ),
          ],
        ),
      ),
    );
  }
}

// /Users/akshat/PClub_Summer_MailClient/pclub_summer_mailclient/assets/images/user.png