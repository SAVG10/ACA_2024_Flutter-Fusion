import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var bannerHeight = height / 4 - height / 20;

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
                    height: 320,
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
                    child: Text("Profile",
                        style: GoogleFonts.lora(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w700)))),
                Positioned(
                  top: bannerHeight,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 7, 114, 254),
                    radius: bannerHeight / 2.5 + 3,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: bannerHeight / 2.5,
                      backgroundImage:
                          const AssetImage("assets/images/Doctor-pana.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: bannerHeight / 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 38),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(68, 117, 117, 117),
                          spreadRadius: 1,
                          blurRadius: 15)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email",
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("Full Name",
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Full Name',
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Age",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700)),
                                const SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: const TextField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Age',
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          flex: 2,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Phone no.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700)),
                                const SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: const TextField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Phone no.',
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    final p0 = size.height * 0.75;
    path.lineTo(0.0, p0);

    final controlPoint = Offset(size.width * 0.4, size.height);
    final endPoint = Offset(size.width, size.height / 2);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(BackgroundWaveClipper oldClipper) => oldClipper != this;
}
