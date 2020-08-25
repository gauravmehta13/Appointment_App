import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                child: Stack(children: <Widget>[
                  Card(
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
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 35,
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
                          )
                        ],
                      ),
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
                      //color: Colors.blueGrey,
                      height: 300,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.supervised_user_circle,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
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
