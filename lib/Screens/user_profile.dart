import 'package:flutter/material.dart';

final startColor = Colors.deepOrangeAccent[100];
final endColor = Colors.deepOrangeAccent[600];

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              color: Colors.blueGrey,
              height: 300,
            ),
            Positioned(
                child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png'),
            )),
          ],
        ),
        ListTile(
          leading: Icon(Icons.verified_user),
          dense: true,
          title: Text('Gaurav'),
          subtitle: Text('No Apponitments Due'),
        )
      ],
    ));
  }
}
