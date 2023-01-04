import 'package:flutter/material.dart';

import 'package:real_estate/loginpage/emailpage.dart';



void main() {
  runApp(MaterialApp(
    home: emailpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold();
  }
}
