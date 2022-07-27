import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/auth/login.dart';
import 'package:dogitravellerui/page/auth/signUp/name.dart';
import 'package:dogitravellerui/page/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final _bgColor = NowUIColors.homecolorr;
  final sayfalar = [Dashboard(), SignUpp(), Login(), Dashboard()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: sayfalar[selectedIndex],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: selectedIndex,
          onTap: (i) => setState(() => selectedIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              unselectedColor: NowUIColors.black,
              icon: Icon(Iconsax.home),
              title: Text("Home"),
              selectedColor: NowUIColors.black,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Iconsax.send_2),
              title: Text("Send"),
              selectedColor: NowUIColors.trncu,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Iconsax.heart),
              title: Text("Search"),
              selectedColor: NowUIColors.trncu,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Iconsax.user),
              title: Text("Profile"),
              selectedColor: NowUIColors.trncu,
            ),
          ],
        ));
  }
}
