import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecialityModel {
  String imgAssetPath;
  String speciality;
  int noOfDoctors;
  Color backgroundColor;
  SpecialityModel(
      {this.imgAssetPath,
      this.speciality,
      this.noOfDoctors,
      this.backgroundColor});
}

class SpecialistTile extends StatelessWidget {
  final String imgAssetPath;
  final String speciality;
  final int noOfDoctors;
  final Color backColor;
  SpecialistTile(
      {@required this.imgAssetPath,
      @required this.speciality,
      @required this.noOfDoctors,
      @required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: backColor, borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            speciality,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "$noOfDoctors Doctors",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          Image.asset(
            imgAssetPath,
            height: 117,
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    );
  }
}
