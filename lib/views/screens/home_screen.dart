import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/constants.dart';

import '../widgets/custom_icon.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        onTap: (value) {
          setState(() {
            pageindex = value;
          });
        },
        currentIndex: pageindex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30), label: "Search"),
          BottomNavigationBarItem(icon: CustomIcon(), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.inbox, size: 30), label: "Inbox"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 30), label: "Profile"),
        ],
      ),
      body: pages[pageindex],
    );
  }
}
