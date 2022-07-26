import 'dart:async';
import 'dart:convert';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:dio/dio.dart';
import 'package:dogitravellerui/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lamp_bottom_navigation/lamp_bottom_navigation.dart';
import 'package:z_dialog/z_dialog.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final String zamanmesaji =
      DateTime.now().hour < 18 ? "Good Morning 🌞" : "Good Night 🌜";
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdropColor: NowUIColors.homecolorr,
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        disabledGestures: false,
        childDecoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: NowUIColors.anasite,
              blurRadius: 20.0,
              spreadRadius: 15.0,
              offset: Offset(-3.0, 0.0),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        drawer: SafeArea(
          child: Container(
            child: ListTileTheme(
              textColor: NowUIColors.black,
              iconColor: NowUIColors.anasite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AvatarGlow(
                      glowColor: NowUIColors.anasite,
                      endRadius: 70.0,
                      duration: Duration(milliseconds: 3000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      child: Material(
                        // Replace this child with your own
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/images/logo.png',
                            fit: BoxFit.cover,
                          ),
                          radius: 40.0,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white70,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Iconsax.flash_1),
                    title: Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Iconsax.user),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Iconsax.support,
                      color: NowUIColors.anasite,
                    ),
                    title: Text(
                      'Support',
                      style: TextStyle(
                          color: NowUIColors.black,
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Iconsax.setting),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Iconsax.logout),
                    title: Text(
                      'Log Out',
                      style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0.0,
              titleSpacing: 10.0,
              backgroundColor: NowUIColors.homecolorr,
              centerTitle: true,
              leading: new IconButton(
                icon: new Icon(
                  Iconsax.menu,
                  color: NowUIColors.black,
                ),
                onPressed: () {
                  _handleMenuButtonPressed();
                },
              ),
              title: Image.asset(
                'assets/images/logo.png',
                height: 90,
                width: 90,
              ),
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(
                    Iconsax.notification,
                    color: NowUIColors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            backgroundColor: NowUIColors.homecolorr,
            body: SingleChildScrollView(
              padding: EdgeInsets.all(25),
              child: Form(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 95,
                      ),
                      Text(
                        "Hello,Dogan!",
                        style: GoogleFonts.urbanist(
                            color: NowUIColors.text,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Where do you want to explore today?",
                        style: GoogleFonts.urbanist(
                            color: NowUIColors.text,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              print('bişeyler yaz');
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {});
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: GoogleFonts.urbanist(
                            color: NowUIColors.homecolorr,
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              hintText: "Search Destination",
                              prefixIcon: Icon(
                                Iconsax.search_favorite,
                                color: NowUIColors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: NowUIColors.splash),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: NowUIColors.splash),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                color: NowUIColors.yaziRenk.withOpacity(0.5),
                                fontSize: 14,
                              ),
                              fillColor: NowUIColors.textfieldColor),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          new GestureDetector(
                            onTap: () {
                              print("choosecategory");
                            },
                            child: new Text(
                              "Choose Category",
                              style: GoogleFonts.urbanist(
                                  color: NowUIColors.yazi,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          new GestureDetector(
                            onTap: () {
                              print("Comin soon see all");
                            },
                            child: new Text(
                              "See All",
                              style: GoogleFonts.urbanist(
                                color: NowUIColors.yaziRenk,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    new InkWell(
                                      onTap: () {
                                        //print test
                                      },
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        height: 50,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/topmenu/one.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Forest',
                                        style: GoogleFonts.urbanist(
                                            color: NowUIColors.yazi,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    new InkWell(
                                      onTap: () {
                                        //print test
                                      },
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        height: 50,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/topmenu/two.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Beach',
                                        style: GoogleFonts.urbanist(
                                            color: NowUIColors.yazi,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    new InkWell(
                                      onTap: () {
                                        //print test
                                      },
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        height: 50,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/topmenu/three.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Mountain',
                                        style: GoogleFonts.urbanist(
                                            color: NowUIColors.yazi,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          new GestureDetector(
                            onTap: () {
                              print("choosecategory");
                            },
                            child: new Text(
                              "Favorite Place",
                              style: GoogleFonts.urbanist(
                                  color: NowUIColors.yazi,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 175,
                          ),
                          new GestureDetector(
                            onTap: () {
                              print("Comin soon see all");
                            },
                            child: new Text(
                              "Explore",
                              style: GoogleFonts.urbanist(
                                color: NowUIColors.yaziRenk,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: new InkWell(
                              onTap: () {
                                //print test
                              },
                              child: Container(
                                height: 256,
                                width: 186,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: NowUIColors.anasite,
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/kuta.png"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 200.0,
                                    left: 10,
                                  ),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: new InkWell(
                              onTap: () {
                                //print test
                              },
                              child: Container(
                                height: 256,
                                width: 186,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: NowUIColors.anasite,
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/bra.png"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 200.0,
                                    left: 10,
                                  ),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: new InkWell(
                              onTap: () {
                                //print test
                              },
                              child: Container(
                                height: 256,
                                width: 186,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/kuta.png"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 200.0,
                                    left: 10,
                                  ),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: new InkWell(
                              onTap: () {
                                //print test
                              },
                              child: Container(
                                height: 256,
                                width: 186,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: NowUIColors.anasite,
                                  image: DecorationImage(
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.4),
                                        BlendMode.dstATop),
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1621571029036-1573d2b1dc5c?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 200.0,
                                    left: 10,
                                  ),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: new InkWell(
                                    onTap: () {
                                      //print test
                                    },
                                    child: Container(
                                      height: 180,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: NowUIColors.anasite,
                                        image: DecorationImage(
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.dstATop),
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1616531770192-6eaea74c2456?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 130.0,
                                          left: 10,
                                        ),
                                        child: Wrap(
                                          spacing: 30,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "Live Education",
                                                  style: TextStyle(
                                                      color: NowUIColors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 25,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: new InkWell(
                                    onTap: () {
                                      //print test
                                    },
                                    child: Container(
                                      height: 180,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: NowUIColors.anasite,
                                        image: DecorationImage(
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.3),
                                              BlendMode.dstATop),
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1507878866276-a947ef722fee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"),
                                          fit: BoxFit.cover,
                                          alignment: Alignment.topCenter,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 130.0, left: 10),
                                        child: Wrap(
                                          spacing: 40,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "Vip Education",
                                                  style: TextStyle(
                                                      color: NowUIColors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 25,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: new InkWell(
                          onTap: () {
                            print("ekonomistdanis bastın");
                          },
                          child: Container(
                            height: 165,
                            width: 420,
                            decoration: BoxDecoration(
                              color: NowUIColors.anasite,
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.3),
                                    BlendMode.dstATop),
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1640340434855-6084b1f4901c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 100, left: 10),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Technical Analysis",
                                    style: TextStyle(
                                        color: NowUIColors.white,
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                new GestureDetector(
                                  onTap: () {},
                                  child: new Text(
                                    "Services",
                                    style: GoogleFonts.montserrat(
                                        color: NowUIColors.text,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: new InkWell(
                                    onTap: () {
                                      //print test
                                    },
                                    child: Container(
                                      height: 250,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: NowUIColors.anasite,
                                        image: DecorationImage(
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.dstATop),
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1540575467063-178a50c2df87?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 200.0,
                                          left: 10,
                                        ),
                                        child: Wrap(
                                          spacing: 30,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "Conference",
                                                  style: TextStyle(
                                                      color: NowUIColors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: new InkWell(
                                    onTap: () {
                                      //print test
                                    },
                                    child: Container(
                                      height: 250,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: NowUIColors.anasite,
                                        image: DecorationImage(
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.3),
                                              BlendMode.dstATop),
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1467664631004-58beab1ece0d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 200.0, left: 10),
                                        child: Wrap(
                                          spacing: 40,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "Consultancy",
                                                  style: TextStyle(
                                                      color: NowUIColors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 25,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      /*
                  Container(
                      child: ExpansionCard(
                    background: Image.asset("assets/animations/moon.gif"),
                    title: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: Analiz()));
                            },
                            child: new Text(
                              "Analiz",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Montserrat',
                                  color: NowUIColors.beyaz),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                  */

                      /*
                  GFCard(
                    boxFit: BoxFit.fitHeight,
                    titlePosition: GFPosition.start,
                    title: GFListTile(
                      avatar: GFAvatar(
                        backgroundImage: AssetImage('assets/imgs/telegram.png'),
                      ),
                      subTitle: Text('Sevgili Öğrencimiz;'),
                    ),
                    content: Text(
                        "İşternet öğrencilerine özel Telegram gurubumuza buradan üye olabilirsiniz."),
                    buttonBar: GFButtonBar(
                      children: <Widget>[
                        GFButton(
                          onPressed: () {
                            telegramPage();
                          },
                          text: 'Katıl',
                        ),
                        /*
                      GFButton(
w                        onPressed: () {},
                        text: 'Cancel',
                      ),
                      */
                      ],
                    ),
                  ),
                  GFCard(
                    boxFit: BoxFit.cover,
                    titlePosition: GFPosition.start,
                    title: GFListTile(
                      avatar: GFAvatar(
                        backgroundImage: AssetImage('assets/imgs/ytb.png'),
                      ),
                      subTitle: Text('YouTube'),
                    ),
                    content: Text(
                        "Kanalımıza Buradan Abone Olabilir ve Birbirinden Güzel İçeriklere Gözatabilirsiniz."),
                    buttonBar: GFButtonBar(
                      children: <Widget>[
                        GFButton(
                          onPressed: () {
                            youtubePage();
                          },
                          text: 'Abone Ol',
                        ),
                        /*
                      GFButton(
w                        onPressed: () {},
                        text: 'Cancel',
                      ),
                      */
                      ],
                    ),
                  ),
                  */
                    ]),
              ),
            )));
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  void _hideMenu() {
    _advancedDrawerController.hideDrawer();
  }
}
