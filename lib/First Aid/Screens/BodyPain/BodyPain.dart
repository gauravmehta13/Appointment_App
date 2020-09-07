import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BackBody.dart';
import 'FrontBody.dart';

class BodyPain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Spacer(),
          Text(
            'Where Do You Feel Pain?',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Text(
            'Choose the part of body where you are feeling pain',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            //width: 500,
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/firstaid/body.jpg'))),
            child: Row(
              children: <Widget>[FrontBody(), BackBody()],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
