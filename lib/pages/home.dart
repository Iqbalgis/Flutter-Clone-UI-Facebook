import 'package:flutter/material.dart';
import 'package:ui_facebook/utils/names.dart';
import 'package:ui_facebook/widgets/components/post_card.dart';
import 'package:ui_facebook/widgets/components/status_card.dart';
import 'package:ui_facebook/widgets/components/stories.dart';
import 'package:ui_facebook/widgets/components/top_bar_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 32,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_circle_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/facebook.png",
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                //TopBarIcon
                TopBarIcon(icon: Icons.search),
                SizedBox(width: 16),
                TopBarIcon(icon: Icons.message_rounded),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          StatusCard(),
          SizedBox(height: 8),
          Stories(),
          SizedBox(height: 8),
          PostCard(
            profileImage: "assets/images/pp.jpg",
            text: 'Halo halo halo facebook facebook facebook',
            name: name0,
          ),
          SizedBox(height: 8),
          PostCard(
            profileImage: "assets/images/pp.jpg",
            text: 'Hallo guys this my first facebook status',
            name: name1,
          ),
          SizedBox(height: 8),
          PostCard(
            profileImage: "assets/images/pp.jpg",
            text: 'Hallo guys this my first facebook status',
            name: name2,
          ),
        ],
      ),
    );
  }
}
