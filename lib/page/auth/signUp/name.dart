import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/auth/login.dart';
import 'package:dogitravellerui/page/auth/signUp/email.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

import 'package:simple_icons/simple_icons.dart';

class SignUpp extends StatefulWidget {
  SignUpp({Key? key}) : super(key: key);

  @override
  State<SignUpp> createState() => _SignUppState();
}

TextEditingController usr = TextEditingController();
TextEditingController psd = TextEditingController();
String? username;
String? password;
String? _email;
String? _password;
bool _obscureText = true;

bool _checkbox = true;
const double iconSize = 18;

class _SignUppState extends State<SignUpp> {
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
                    child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Create Your Account',
                            style: GoogleFonts.urbanist(
                              color: NowUIColors.textColor,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "What's is your name?",
                            style: GoogleFonts.urbanist(
                                color: NowUIColors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ]),
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: TextFormField(
                controller: usr,
                onSaved: (value) {
                  username = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    print('bişeyler yaz');
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 15, color: NowUIColors.formfield),
                decoration: InputDecoration(
                    labelText: "Firs Name",
                    labelStyle: TextStyle(color: NowUIColors.defaultColor),
                    contentPadding: EdgeInsets.all(15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: NowUIColors.defaultColor),
                      borderRadius: BorderRadius.circular(15.7),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                      color: NowUIColors.formfield.withOpacity(0.5),
                      fontSize: 13,
                    ),
                    fillColor: NowUIColors.splash),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: TextFormField(
                controller: usr,
                onSaved: (value) {
                  username = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    print('bişeyler yaz');
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 15, color: NowUIColors.formfield),
                decoration: InputDecoration(
                    labelText: "Last Name",
                    labelStyle: TextStyle(color: NowUIColors.defaultColor),
                    contentPadding: EdgeInsets.all(15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: NowUIColors.defaultColor),
                      borderRadius: BorderRadius.circular(15.7),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                      color: NowUIColors.formfield.withOpacity(0.5),
                      fontSize: 13,
                    ),
                    fillColor: NowUIColors.splash),
              ),
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
                        MaterialPageRoute(builder: (context) => Email()));
                  },
                  child: Text(
                    'Input Email',
                    style: GoogleFonts.urbanist(
                        color: NowUIColors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
