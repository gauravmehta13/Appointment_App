import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/clinics.dart';
import 'Screens/doctors.dart';
import 'Screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChikitSuck',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentindex = 1;
  final List<Widget> _children = [
    Clinics(),
    Homepage(),
    Doctors(),
  ];
  void onTappedBar(int newindex) {
    setState(() {
      _currentindex = newindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Team Nerv"),
                accountEmail: Text("Mayank , Priya , Gaurav"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: Text(
                    "N",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: Text("Item 1"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                title: Text("Item 2"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: _children[_currentindex],
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.deepOrangeAccent,
          backgroundColor: Colors.white,
          height: 50,
          items: <Widget>[
            Icon(Icons.control_point_duplicate, size: 20, color: Colors.white),
            Icon(Icons.home, size: 20, color: Colors.white),
            Icon(Icons.local_hospital, size: 20, color: Colors.white),
          ],
          animationDuration: Duration(milliseconds: 500),
          animationCurve: Curves.fastOutSlowIn,
          onTap: onTappedBar,
          index: _currentindex,
        ));
  }
}
