import 'package:Appointment_App/data/data.dart';
import 'package:Appointment_App/model/LookingFor.dart';
import 'package:Appointment_App/model/hospitals.dart';
import 'package:Appointment_App/model/specialities.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
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
              height: MediaQuery.of(context).size.height * 0.02,
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
              height: MediaQuery.of(context).size.height * 0.01,
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
              height: MediaQuery.of(context).size.height * 0.01,
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
              height: MediaQuery.of(context).size.height * 0.02,
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
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (ctx, i) => Hospitals(i),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
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
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              //padding: const EdgeInsets.symmetric(horizontal: 10),
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
