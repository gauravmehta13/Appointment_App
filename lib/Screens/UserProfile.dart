import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1544171779-783118e110f8?ixlib=rb-1.2.1&w=1000&q=80'),
              fit: BoxFit.fitHeight)),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 60, 15, 10),
                child: Stack(children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(
                            colors: [
                              const Color(0xFF3defe7),
                              const Color(0xFF36abfc),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: 300,
                      width: double.infinity,
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
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white),
                              ),
                              child: Text(
                                'Complete Your Profile',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          new LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 100,
                              animation: true,
                              lineHeight: 10.0,
                              animationDuration: 2500,
                              percent: 0.2,
                              center: Text(
                                "20.0%",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.white,
                              backgroundColor: Colors.lightBlueAccent),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.supervised_user_circle,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.person_pin,
                              color: Color(0xFF39cef0),
                            ),
                            title: Text('My Doctors '),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.calendar_today,
                              color: Color(0xFF39cef0),
                            ),
                            title: Text('Appoinments'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.video_call,
                              color: Color(0xFF39cef0),
                            ),
                            title: Text('Online Consultation'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.group,
                              color: Color(0xFF39cef0),
                            ),
                            title: Text('Medical records'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.watch,
                              color: Color(0xFF39cef0),
                            ),
                            title: Text('Remainders'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.watch,
                              color: Color(0xFF39cef0),
                            ),
                            title: Text('Coming Soon'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.watch,
                              color: Color(0xFF39cef0),
                            ),
                            title: Text('Coming Soon'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(),
                        ],
                      ),
                    ),
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
