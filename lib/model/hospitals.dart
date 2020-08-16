import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hospitals extends StatelessWidget {
  final int index;
  Hospitals(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 140,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Card(
              color: CupertinoColors.systemGrey4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 0,
              child: Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
