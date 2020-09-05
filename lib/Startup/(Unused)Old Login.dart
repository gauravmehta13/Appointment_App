/*import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

bool _rememberMe = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.imgflip.com/5h8ow.jpg'),
            fit: BoxFit.cover,
            )
        ),
        //color: Colors.redAccent[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign In Page',
            style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: 'OpenSans',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30,),
          Container(
            alignment: Alignment.centerLeft,
            /*decoration: BoxDecoration(
              border: Border.all( width: 2),
              borderRadius: BorderRadius.circular(50),
            ),*/
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail, color: Colors.red,),
                hintText: 'Enter Your Email',
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.08
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.centerLeft,
            /*decoration: BoxDecoration(
              border: Border.all( width: 2),
              borderRadius: BorderRadius.circular(5)
            ),*/
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
            height: MediaQuery.of(context).size.height * 0.08
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            width: double.infinity,
            child: RaisedButton(
            elevation: 5.0,
            onPressed: () => print('Login Button Pressed'),
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Colors.white,
            child: Text(
            'LOGIN',
              style: TextStyle(
                color: Color(0xFF527DAA),
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
            ),
          ),
          Row(
          children: <Widget>[
            Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: _rememberMe,
                checkColor: Colors.white,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value;
                  });
                },
              ),
            ),
            Text(
              'Remember me',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ],),
          Container(
            child: FlatButton(
              onPressed: () => print('Forgot Password Button Pressed'),
              padding: EdgeInsets.only(right: 0.0),
              child: Text(
              'Forgot Password?',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ),
          ),
          Text(
            '- OR -',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: double.infinity,
              child: RaisedButton(
              elevation: 5.0,
              onPressed: () => print('Login Button Pressed'),
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            color: Colors.white,
            child: Text(
            'SIGN UP',
              style: TextStyle(
                color: Color(0xFF527DAA),
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
        ],
      ),
      ),
    );
  }
}*/