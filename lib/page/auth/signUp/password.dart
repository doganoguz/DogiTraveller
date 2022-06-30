import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/auth/login.dart';
import 'package:dogitravellerui/page/auth/signUp/email.dart';
import 'package:dogitravellerui/page/status/404.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

import 'package:simple_icons/simple_icons.dart';

class Password extends StatefulWidget {
  Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
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

class _PasswordState extends State<Password> {
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
                            "Create a password",
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Your password must include at least one symbol and be 8 \nor more characters long.",
                  style: GoogleFonts.urbanist(
                    color: NowUIColors.defaultColor,
                    fontSize: 12,
                  ),
                ),
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
                        MaterialPageRoute(builder: (context) => Error()));
                  },
                  child: Text(
                    'Verification',
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
