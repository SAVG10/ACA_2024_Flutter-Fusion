import 'package:chat_app_aca/constants/color.dart';
import 'package:chat_app_aca/screens/home_page.dart';
import 'package:chat_app_aca/screens/maintenance_page.dart';
import 'package:chat_app_aca/screens/profile_page.dart';
import 'package:chat_app_aca/screens/setting_page.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final list = [
    const HomePage(),
    const MaintenancePage(),
    const ProfileScreen(),
    SettingScreen()
  ];
  int _selectedIndex = 0;

  void onTap(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  final bottomNavigationBarItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_box),
      label: "Status",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_box),
      label: "Profile",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_box),
      label: "setting",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(index: _selectedIndex, children: list),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: AppColor.themeColor,
          unselectedItemColor: Colors.grey.shade600,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle:const TextStyle(fontWeight: FontWeight.w600),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: onTap,
          items: bottomNavigationBarItems,
        ),
      ),
    );
  }
}
