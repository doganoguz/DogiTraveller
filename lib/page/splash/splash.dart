import 'dart:ui';

import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => new Onboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NowUIColors.splash,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
            ),
            SizedBox(
              height: 25,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(NowUIColors.black),
            ),
            new Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Text(
                        'Version: 1.0',
                        style: GoogleFonts.urbanist(
                          color: NowUIColors.black,
                          fontSize: 12,
                        ),
                      ),
                    ]),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
