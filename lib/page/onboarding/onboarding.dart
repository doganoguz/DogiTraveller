import 'dart:ui';
import 'package:dogitravellerui/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:story_view/story_view.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final controller = StoryController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<StoryItem> storyItems = [
      StoryItem.inlineImage(
        url:
            "https://images.unsplash.com/photo-1520466809213-7b9a56adcd45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        controller: controller,
//https://i.ibb.co/smgTvmb/1.png
//https://tiktokresim.com/isternetapp/1.png
        //
      ),
      StoryItem.inlineImage(
        url:
            "https://images.unsplash.com/photo-1517527808732-2f3aa7da3d75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        controller: controller,

        //https://i.ibb.co/hWbtGJM/2.png
      ),
      StoryItem.inlineImage(
        url:
            "https://images.unsplash.com/photo-1529424601215-d2a3daf193ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",

        controller: controller,
        //https://i.ibb.co/82Jzg3P/test.png
      ),
    ];
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.6),
        body: Stack(
          children: [
            StoryView(
              storyItems: storyItems,
              controller: controller,
              inline: true,
              repeat: true,
            ),
            /* */ SafeArea(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                                    'assets/images/logo.png',
                                    fit: BoxFit.cover,
                                    height: 20.0,
                                    width: 70.0,
                                  )
                                ],
                              ),
                            ]),
                          ],
                        )),
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
                                        color: NowUIColors.black,
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
                                      color: NowUIColors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ],
                        )),
                    SizedBox(
                      height: 150,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 30, right: 30),
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                            height: 37.0,
                            width: 320.0,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                primary: NowUIColors.trncu,
                                backgroundColor: NowUIColors.trncu,
                                side: BorderSide(
                                    color: NowUIColors.trncu, width: 2),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              child: Text(
                                'Next',
                                style: GoogleFonts.urbanist(
                                  color: NowUIColors.black,
                                  fontSize: 18,
                                ),
                              ),
                              onPressed: () {},
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }

  void cikisYap() {
    exit(0);
  }
}
