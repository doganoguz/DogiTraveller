import 'dart:html';

import 'package:flutter/material.dart';

class PlaceDetails extends StatefulWidget {
  PlaceDetails({Key? key}) : super(key: key);

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  final sikiciSayac = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(sikiciSayac + 10);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
