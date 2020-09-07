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
      initialRoute: "chatbot",
      routes: {
        "/": (context) => WelcomeScreen(),
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
    Doctors(),
  ];
  void onTappedBar(int newindex) {
    setState(() {
      _currentindex = newindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    var authc = FirebaseAuth.instance;
    var googleSignIn = GoogleSignIn();
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
                              'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png'),
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
                title: Text("Doctor's Profile(Test)"),
                trailing: Icon(Icons.local_hospital),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DoctorProfile()));
                },
              ),
              ListTile(
                title: Text("Logout"),
                trailing: Icon(Icons.logout),
                onTap: () async {
                  print('sign out');
                  await authc.signOut();
                  await googleSignIn.signOut();
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/", (route) => false);
                },
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
