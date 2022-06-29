import 'package:dogitravellerui/auth/sign_up.dart';
import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/auth/login.dart';
import 'package:dogitravellerui/page/auth/signUp/name.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:simple_icons/simple_icons.dart';

class Email extends StatefulWidget {
  Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

TextEditingController usr = TextEditingController();
TextEditingController psd = TextEditingController();
String? username;
String? password;
String? _email;
String? _password;
bool _obscureText = true;

bool _switchValue = true;

bool _checkbox = true;
const double iconSize = 18;

class _EmailState extends State<Email> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
                MaterialPageRoute(builder: (context) => SignUpp()));
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
                            "And, your email?",
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
                    labelText: "Email",
                    hintText: "hi@traverdogi.com",
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
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "I’d like to received marketing and policy \ncommunication from traver and its partners.",
                  style: GoogleFonts.urbanist(
                    color: NowUIColors.defaultColor,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
                height: 50.0,
                width: 315.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: NowUIColors.trncu,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    side: BorderSide(width: 2, color: NowUIColors.trncu),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Input Password',
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
