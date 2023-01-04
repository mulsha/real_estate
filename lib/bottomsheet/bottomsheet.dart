

import 'package:flutter/material.dart';

import 'package:real_estate/bottomsheet/Home/01-Home.dart';
import 'package:real_estate/bottomsheet/favorite/favoritepage.dart';
import 'package:real_estate/bottomsheet/message/messagepage.dart';
import 'package:real_estate/bottomsheet/profile/profilepage.dart';


class bottompage extends StatefulWidget {
  const bottompage({Key? key}) : super(key: key);

  @override
  State<bottompage> createState() => _bottompageState();
}

class _bottompageState extends State<bottompage> {
  int selectindex = 0;
  List pages = [home(),favoritepage(),messagepage(),profilepage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectindex,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0XFF2D52EF),
          unselectedItemColor: Color(0XFFB4B4B4),
          onTap: (value) {
            setState(() {
              selectindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Favotite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Profile')
          ]),
    );
  }
}
