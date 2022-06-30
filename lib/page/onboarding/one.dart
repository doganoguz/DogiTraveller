import 'dart:ui';
import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/onboarding/two.dart';
import 'package:dogitravellerui/page/test/animation_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:story_view/story_view.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:ig_story/ig_story.dart";
import 'package:cached_network_image/cached_network_image.dart';

class OnboardOne extends StatefulWidget {
  @override
  _OnboardOneState createState() => _OnboardOneState();
}

class _OnboardOneState extends State<OnboardOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        background(context),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: <Widget>[
                    new Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Column(children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/homelg.png',
                                    fit: BoxFit.cover,
                                    height: 20.0,
                                    width: 70.0,
                                  )
                                ],
                              ),
                            ]),
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                new Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                'Lets explore \nthe world',
                                style: GoogleFonts.urbanist(
                                    color: NowUIColors.beyaz,
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                      ],
                    )),
                new Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                'lets explore the world with us with just \nafew clicks',
                                style: GoogleFonts.urbanist(
                                  color: NowUIColors.beyaz,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: 120,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 80.0, left: 30, right: 30),
                  child: SizedBox(
                    width: double.infinity,
                    child: Container(
                        height: 37.0,
                        width: 320.0,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: NowUIColors.trncu,
                            backgroundColor: NowUIColors.trncu,
                            side:
                                BorderSide(color: NowUIColors.trncu, width: 2),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13))),
                          ),
                          child: Text(
                            'Next',
                            style: GoogleFonts.urbanist(
                              color: NowUIColors.black,
                              fontSize: 15,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                //Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnboardTwo()));
                          },
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void cikisYap() {
    exit(0);
  }

  Widget background(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.center,
        colors: [
          Colors.black,
          Colors.transparent,
        ],
      ).createShader(rect),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1529424601215-d2a3daf193ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
          ),
        ),
      ),
    );
  }
}
