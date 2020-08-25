import 'package:Appointment_App/Screens/DoctorProfile.dart';
import 'package:Appointment_App/Screens/UserProfile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/SplashScreen.dart';
import 'Screens/ClinicsList.dart';
import 'Screens/DoctorsList.dart';
import 'Screens/Homepage.dart';

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
      //theme: ThemeData(primarySwatch: Colors.blue),
      home: //DoctorProfile()
          // UserProfile()
          SplashScreen(),
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
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UserProfile(),
                  ));
                },
                child: Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://png.pngtree.com/element_our/png/20181206/users-vector-icon-png_260862.jpg'),
                          fit: BoxFit.fill)),
                ),
              ),
              Text(
                'Team Nerv',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.deepOrangeAccent),
              ),
              Text(
                'Mayank , Priya , Gaurav',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.deepOrangeAccent),
              ),
              Divider(),
              ListTile(
                title: Text("First Aid"),
                trailing: Icon(Icons.local_hospital),
                onTap: () {},
              ),
              ListTile(
                title: Text("Item 2"),
                trailing: Icon(Icons.local_hospital),
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
