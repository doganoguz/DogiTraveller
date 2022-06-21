// @dart=2.9

//bu bir Doğan Oğuz projesidir.

//Kuyumu kazmaya çalıştığın kürek benimse SAPINA DİKKAT ET ASLANIMMM EYVALLAH

import 'package:dogitravellerui/constant/color.dart';
import 'package:dogitravellerui/page/onboarding/onboarding.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: NowUIColors.statusbar, //statusbar color değiştirme
  ));

  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

//test amk
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
        theme: ThemeData(
            backgroundColor: NowUIColors.homeclr, fontFamily: 'Poppins'),
        initialRoute: '/onboard',
        routes: <String, WidgetBuilder>{
          '/onboard': (BuildContext context) => new OnBoarding(),
        });
  }
}
