import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Near By \nHospitals',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
                //scrollPadding: EdgeInsets.symmetric(vertical: 10),
                decoration: InputDecoration(
                    fillColor: Color(0xffF6F5F4),
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Search Doctors , Clinic...')),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Specialities',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
