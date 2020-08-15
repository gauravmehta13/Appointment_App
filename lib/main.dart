import 'package:flutter/material.dart';

import 'Screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appointment App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Homepage(),
    );
  }
}
