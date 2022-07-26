import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/auth/password_reset.dart';
import 'package:dogitravellerui/page/auth/signUp/name.dart';
import 'package:dogitravellerui/page/dashboard/dashboard.dart';
import 'package:dogitravellerui/page/dashboard/menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

import 'package:simple_icons/simple_icons.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
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

class _LoginState extends State<Login> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NowUIColors.splash,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.png',
                  height: 90,
                  width: 90,
                ),
              ],
            ),
            SizedBox(
              height: 100,
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
                keyboardType: TextInputType.visiblePassword,
                controller: psd,
                onSaved: (value) {
                  password = value;
                },
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: NowUIColors.defaultColor),
                  contentPadding: EdgeInsets.all(15.0),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Iconsax.eye_slash : Iconsax.eye,
                      color: NowUIColors.formfield,
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                    color: NowUIColors.formfield.withOpacity(0.5),
                    fontSize: 13,
                  ),
                  fillColor: NowUIColors.splash,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: NowUIColors.defaultColor),
                    borderRadius: BorderRadius.circular(15.7),
                  ),
                ),
                obscureText: _obscureText,
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    print('bişeyler gir');
                  }
                  return null;
                },
              ),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkbox,
                  activeColor: NowUIColors.trncu,
                  checkColor: NowUIColors.beyaz,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = !_checkbox;
                    });
                  },
                ),
                Text(
                  'Remember me',
                  style: GoogleFonts.urbanist(
                    color: NowUIColors.defaultColor,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        //Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()));
                  },
                  child: new Text(
                    'Forgot Password?',
                    style: GoogleFonts.urbanist(
                      color: NowUIColors.defaultColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Container(
                height: 50.0,
                width: 310.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    side: BorderSide(width: 2, color: NowUIColors.defaultColor),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        //Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpp()));
                  },
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.urbanist(
                        color: NowUIColors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50.0,
                width: 310.0,
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
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.urbanist(
                        color: NowUIColors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(SimpleIcons.instagram,
                      size: iconSize, color: NowUIColors.black),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(5),
                    primary: NowUIColors.socialbtn, // <-- Button color
                    // <-- Splash color
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(SimpleIcons.google,
                      size: iconSize, color: NowUIColors.black),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(5),
                      primary: NowUIColors.socialbtn // <-- Button color
                      // <-- Splash color
                      ),
                ),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(SimpleIcons.facebook,
                      size: iconSize, color: NowUIColors.black),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(5),
                      primary: NowUIColors.socialbtn // <-- Button color
                      // <-- Splash color
                      ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
