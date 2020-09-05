import 'package:flutter/material.dart';

class DoctorProfile extends StatefulWidget {
  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: new LinearGradient(
                      /*colors: [
                        const Color(0xFF3defe7),
                        const Color(0xFF36abfc),
                      ],*/
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    )),
                height: 120,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 80, 15, 10),
                child: Stack(children: <Widget>[
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 50,
                      child: Container(
                          height: 300,
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          child: Column(children: <Widget>[
                            SizedBox(
                              height: 60,
                            ),
                            Text(
                              'Dr. Priya Soni',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'B.Sc,MBBS,DDVL,MD-Dermitologist',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 40,
                                ),
                                Text('16 ',
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                                Text('yrs. Experience',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  width: 80,
                                ),
                                Text('89% ',
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                                Text('(4384 Votes)',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400)),
                              ],
                            )
                          ])))
                ]),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Stack(children: <Widget>[
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 50,
                    child: Container(
                      height: 350,
                    ))
              ])),
        ],
      ),
    );
  }
}
