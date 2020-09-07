import 'package:Appointment_App/First%20Aid/First%20Aid%20Home.dart';
import 'package:Appointment_App/Screens/ChatBot.dart';
import 'package:Appointment_App/Screens/DoctorProfile.dart';
import 'package:Appointment_App/Screens/UserProfile.dart';
import 'package:Appointment_App/Startup/LoginScreen.dart';
import 'package:Appointment_App/Startup/SignupScreen.dart';
import 'package:Appointment_App/Startup/SplashScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'Screens/ClinicsList.dart';
import 'Screens/doctorsList.dart';
import 'Screens/homepage.dart';
import 'Startup/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChikitSuck',
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomeScreen(),
        "bottomnav": (context) => MyBottomNavigationBar(),
        "chatbot": (context) => ChatMessages(),
        "navbar": (context) => MyBottomNavigationBar(),
        "home": (context) => Homepage(),
        "loginscreen": (context) => LoginScreen(),
        "signupscreen": (context) => SignUpScreen(),
        "splashscreen": (context) => SplashScreen(),
      },
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
    FirstAid(),
  ];
  void onTappedBar(int newindex) {
    setState(() {
      _currentindex = newindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
