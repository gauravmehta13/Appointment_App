import 'package:Appointment_App/Startup/SignupScreen.dart';
import 'package:Appointment_App/data/data.dart';
import 'package:Appointment_App/model/LookingFor.dart';
import 'package:Appointment_App/model/hospitals.dart';
import 'package:Appointment_App/model/specialities.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'DoctorProfile.dart';
import 'UserProfile.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<SpecialityModel> specialities;

  @override
  void initState() {
    super.initState();
    specialities = getSpeciality();
  }

  @override
  Widget build(BuildContext context) {
    var authc = FirebaseAuth.instance;
    var googleSignIn = GoogleSignIn();
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/chikitsuck.png'),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
              ),
            )
            /* Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Near By \nHospitals',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),*/
            ,
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: TextField(
                  decoration: InputDecoration(
                      fillColor: Color(0xffF6F5F4),
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'Search Doctors , Clinic...')),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Specialities',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                FlatButton(
                  child: Text('View All'),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "Coming Soon",
                      backgroundColor: Colors.blue,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  itemCount: specialities.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SpecialistTile(
                      imgAssetPath: specialities[index].imgAssetPath,
                      speciality: specialities[index].speciality,
                      noOfDoctors: specialities[index].noOfDoctors,
                      backColor: specialities[index].backgroundColor,
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Hospitals',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                FlatButton(
                  child: Text('View All'),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "Coming Soon",
                      backgroundColor: Colors.blue,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (ctx, i) => Hospitals(i),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'What Are You Looking For',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (ctx, i) => LookingFor(i),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
