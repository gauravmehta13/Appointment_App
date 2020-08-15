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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 10,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  //image: DecorationImage(
                  //  fit: BoxFit.cover,
                  //image: NetworkImage(movieList[index].imageUrl),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
