// @dart=2.9

//bu bir Doğan Oğuz projesidir.

//MAYINLARDA SESSİZDİR. TA Kİ ÜSTÜNE BASANA KADAR.! EYVALLAH

import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/onboarding/one.dart';
import 'package:dogitravellerui/page/splash/splash.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//statusbar color değiştirme
Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: NowUIColors.statusbar,
  ));
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DogiTraveller',
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        routes: <String, WidgetBuilder>{
          '/splash': (BuildContext context) => new Splash(),
        });
  }
}
