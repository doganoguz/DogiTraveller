import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/auth/login.dart';
import 'package:dogitravellerui/page/auth/signUp/email.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

import 'package:simple_icons/simple_icons.dart';

class Error extends StatefulWidget {
  Error({Key? key}) : super(key: key);

  @override
  State<Error> createState() => _ErrorState();
}

const double iconSize = 18;

class _ErrorState extends State<Error> {
  void initState() {
    super.initState();
  }

//Status bar transparent yapma

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 10.0,
        backgroundColor: NowUIColors.splash,
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back,
            color: NowUIColors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(
                //Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()));
          },
        ),
      ),
      backgroundColor: NowUIColors.splash,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Container(
                  child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 177,
                          width: 236,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/err.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Page Not Found",
                              style: GoogleFonts.urbanist(
                                  color: NowUIColors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "It seems like the page that you are",
                              style: GoogleFonts.urbanist(
                                color: NowUIColors.defaultColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "looking for is no longer.",
                              style: GoogleFonts.urbanist(
                                color: NowUIColors.defaultColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 280,
            ),
            Container(
                height: 50.0,
                width: 325.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: NowUIColors.trncu,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    side: BorderSide(width: 2, color: NowUIColors.trncu),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        //Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    'Back to Home',
                    style: GoogleFonts.urbanist(
                        color: NowUIColors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
          ],
        )),
      ),
    );
  }
}
