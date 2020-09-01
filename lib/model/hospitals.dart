import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hospitals extends StatelessWidget {
  final int index;
  Hospitals(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.blue,
      margin: EdgeInsets.only(right: 16),
      width: 140,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Card(
              color: CupertinoColors.systemGrey4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 0,
              child: Container(
                  padding: EdgeInsets.all(5),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: <Widget>[
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue[100],
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text('Hospital Name'),
                    Spacer(
                      flex: 2,
                    ),
                    Text('Great Hospital for Heart patients'),
                    Spacer()
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
