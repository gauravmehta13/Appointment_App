import 'dart:async';

import 'package:flutter/material.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MyBottomNavigationBar(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Color(0xFFEFEBE5)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/splash.png'), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 280,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.deepOrange,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.brown),
          ),
        ],
      ),
    ));
  }
}
