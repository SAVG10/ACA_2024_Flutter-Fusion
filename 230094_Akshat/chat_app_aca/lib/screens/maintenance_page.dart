import 'package:chat_app_aca/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaintenancePage extends StatelessWidget {
  const MaintenancePage({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var bannerHeight = height / 4 - height / 20;
    var width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: BackgroundWaveClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(stops: [0.3,0.98],  colors: [Color(0xFF407BFE),Color.fromARGB(255, 123, 160, 253)])
                    ),
                  ),
                ),
                Positioned(
                   top: bannerHeight/2.7,
                   left: 10,
                  child: CircleAvatar(
                    radius: 21,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xFF407BFE),
                      child: IconButton(
                          onPressed: (){Navigator.pop(context);}, 
                          color:Colors.white,
                          icon: Icon(Icons.arrow_back_ios_rounded)),),
                  )
                        ),
                Positioned(
                  top: bannerHeight/2.6,
                  child:  Text("Maintenance",
                  style: GoogleFonts.lora(
                    textStyle: TextStyle(
                      color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700
                    )
                  )
                  )
                  ),
                // Container(
                //   width: double.infinity,
                //   height: bannerHeight,
                //   decoration: const BoxDecoration(
                //     color: Color.fromARGB(115, 0, 108, 255),
                //     // borderRadius: BorderRadius.only(
                //     //   bottomLeft: Radius.circular(100),
                //     //   bottomRight: Radius.circular(100),
                //     // ),
                //   ),
                //   // child: Image.asset(
                //   //   "assets/Police car-rafiki.png",
                //   //   fit: BoxFit.cover,
                //   // ),

                // ),
                // Positioned(
                //   top: bannerHeight,
                //   child: CircleAvatar(
                //     backgroundColor: const Color.fromARGB(255, 7, 114, 254),
                //     radius: bannerHeight / 2.5 + 3,
                //     child: CircleAvatar(
                //       backgroundColor: Colors.white,
                //       radius: bannerHeight / 2.5,
                //       backgroundImage: AssetImage("assets/images/Doctor-pana.png"),
                //     ),
                //   ),
                // ),
                Positioned(
                  top: height/4,
                  child: Image.asset(
                  "assets/images/Maintenance-cuate.png",
                  width: width,
                ),)
              ],
            ),
            ],
        ),
      ),
    );
  }
}