import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Colors.red,),
                hintText: 'Enter Your E-Mail',

              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.1,
          ),
          SizedBox(height: 20,),
          Container(
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Colors.red,),
                hintText: 'Enter Your Password',
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1
          ),
          SizedBox(height: 20,),
          Card(
            child: RaisedButton(
              onPressed: () => print('pressed'),
              child: Text('Login'),
            ),
            elevation: 5,
          )
        ],
      ),
      ),
    );
  }
}

/*class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber[200],
      child: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Container(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
            ),
            //width: MediaQuery.of(context).size ,
          ),
          Container(),
        ],
      ),
      ),
    );
  }
}*/