import 'package:flutter/material.dart';

final startColor = Colors.deepOrangeAccent[100];
final endColor = Colors.deepOrangeAccent[600];

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://cdn2.vectorstock.com/i/1000x1000/31/16/abstract-honeycomb-pattern-geometric-background-vector-23363116.jpg'),
              fit: BoxFit.none)),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 50,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Gaurav Yadav',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '+91 7073142922',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [
                            const Color(0xFFFF9E80),
                            const Color(0xFFFF3D00),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    //color: Colors.blueGrey,
                    height: 300,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 50,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.calendar_today),
                            title: Text('Appoinments'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.video_call),
                            title: Text('Online Consultation'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.group),
                            title: Text('Medical records'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.watch),
                            title: Text('Remainders'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    //color: Colors.blueGrey,
                    height: 400,
                    width: double.infinity,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
