import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hospitals extends StatelessWidget {
  final int index;
  Hospitals(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Colors.blue[100], borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.only(top: 10, right: 5, left: 5, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hospital Name',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Famous For",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(24)),
            ),
          )
        ],
      ),
    );
  }
}
